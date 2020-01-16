# Running Jupyterlab at aws on an ec2 instance.

The Vancouver School of Economics uses a customized version of jupyterlab on its hub that includes kernels for Python 2 and 3, R, Julia and Sagemath.  This is available on a shared hub.  

This note explains how to run it on your server at amazon using your own S3 bucket to store the notebooks.  You don't have to have an S3 bucket (which is the name aws uses for a private hard disk) to use the vse version of it with amazon.  You'll just have to find a way to get your notebooks to and from your amazon server.  I won't deal with any of that here.

## Bucket managed separately
 
The first approach requires that your amazon server be linux and that it has docker installed.  The only docker command you'll be using are run,ps, and rm so you don't need any special docker expertise.

This method will have jupyterlab open directly into your s3 bucket.  The disadvantage is that you won't be able to see the files in your bucket from the command line of your server.  If you open a terminal in jupyterlab, you won't be able to see your bucket files in the terminal, and you won't be able to run git or svn from the jupyterlab terminal.

The first thing you need to do is to create a file that contains your s3 bucket credentials.  You'll need to have an account on aws, create an s3 bucket there, then add some access keys.  Their instructions about how to do this are better than any I could give.  

Your credentials file should look like this:
```
AWS_REGION=us-east-2
(use your own region)

AWS_S3_BUCKET=your-bucket-name
(your bucket name is something you have called your bucket when you created it)
AWS_S3_HOST=s3-us-east-2.amazonaws.com
(replace us-east-2 in this url with your region)
AWS_ACCESS_KEY_ID=AAAAAAAAAAAAAAAA
AWS_SECRET_ACCESS_KEY=BBBBBBBBBBBBBBBBBBBBB
(replace these with your own keys)
```
Leave out the lines that are parethesized.  Replace `your-bucket-name` with whatever you called the bucket at aws.  You'll need to figure out the region where your bucket is stored.  The AWS_S3_HOST is `s3-(your region string).amazonaws.com`.  My region is `us-east-2`, yours is probably something else.  Replace the strings  beside the access key and key id with the keys you create on aws.

Put the lines above in a file, say `env.list` and save it in your home directory on your aws server.

Now change to your home directory which will always be `/home/ec2-user` as far as I can tell.  You can start the notebook server with this command in your home directory:

```
sudo docker run --network="host"  --env-file env.list -p 8888:8888 --name acontainername michaelpetersubc/aws_jupyterlab
```
The first time you do this it will spend quite a bit of time downloading the components of the container and building it.  The container is fairly big.  I am guessing you'll need 20GB in your root partition for this to work seamlessly.

You can call the container (acontainername) anything you like - maybe just choose your last name so you can remember it.  This should start up the notebook server and will offer you a link on localhost which you can copy and paste in your browser as soon as you create an ssh tunnel.

To create the tunnel to your local computer (laptop or whatever you have) you need to know the url of your aws server.  Once you launch your server at aws you can see the public dns name at the bottom of the display that shows your running instance.  
 
You'll also need the ssh keys you created to connect to your server in the first place.  To create the tunnel, you go to a terminal on your local computer and type the command
```
ssh -L 8888:127.0.0.1:8888 -i .ssh/aws_keys.pem ec2-user@ec2-18-218-100-144.us-east-2.compute.amazonaws.com -N -f
```
In the example above I gave a typical location for the amazon ssh keys, and for the url I used a typical one just so you could recognize what yours is on aws.  You need to change both those bits of information.

On your aws command line copy the url with the long key appended to it, something like
```
http://127.0.0.1:8888/?q=09309095050540805
```
and open it in your local browser.

Don't get frustrated, it won't work unless you create the tunnel first.  If everything is working, your browser will open the lab displaying the files in your s3 bucket.  This magic is accomplished by a library called [Jupyters3](https://github.com/uktrade/jupyters3/tree/master/jupyters3) which you can also use in your own containers.

# Bucket Managed within jupyterlab

The disadvantage of the approach used above is that you will have limited control over the contents of your bucket within jupyterlab itself.  You can create notebooks that will be added to your bucket, or edit notebooks that are already in your bucket.

Neither the lab or your ec2 instance will be able to see the files in your bucket.  You are very likely to want to clone files from github or even commit changes you have made to your own github repo.

To accomplish this, you'll need to mount your s3 bucket to your running ec2 instance, then create a volume for your container so that it will look at this mounted file system. 

To accomplish this you'll need to compile the [s3 filesytem](https://github.com/s3fs-fuse/s3fs-fuse.git) for aws on your ec2 instance.  It isn't very hard.  For example, you can follow the first bit of the instructions at [https://medium.com/tensult/aws-how-to-mount-s3-bucket-using-iam-role-on-ec2-linux-instance-ad2afd4513ef](https://medium.com/tensult/aws-how-to-mount-s3-bucket-using-iam-role-on-ec2-linux-instance-ad2afd4513ef).  Once you get down to the iam policies part you can stop reading.

Once you have compiled and installed the software you can check whether it is working by typing `which s3fs` at the terminal of your ec2 instance.

Now create a directory in your home directory (which should be /home/ec2-user)
```
mkdir bucket
```
You can use any name for the directory, it is going to be the name of the location of your s3 bucket files.

Finally, you have to tell s3fs what your key and secret are for the s3 bucket.
You do this by creating or editing the file /etc/passwd-s3fs on your ec2 instance with a string like this
```
AAAAAAAAA:BBBBBBBBBBBBBBBBBBBBBB
```
The string of A is supposed to represent your s3 access key, the string of B is supposed to represent your secret. On linux you need to use sudo to do this.  When you  have created the file run the command
```
sudo chmod 640 /etc/passwd-s3fs
```

Now run in your home directory (on the ec2 instance)
```
sudo s3fs your_bucket_name -o use_cache=/tmp -o allow_other -o uid=1000 -o mp_umask=002 -o multireq_max=5 ./bucket
```
You'll substitute the real name of your bucket and the real name of the directory you created above.  Finally, the uid in this line is your uid in your ec2 instance.  If you are a single user it will be 1000 and you should have no trouble (this is true for redhat based distributions like centos, redhat etc).

If you list the files in the  bucket directory with 
```
ls bucket
```
you should now see whatever is in your bucket.  You'll start the notebook server with the following command

```
sudo docker run --network="host" -v /home/ec2-user/bucket:/home/jovyan/bucket --env-file env.list -p 8888:8888 --name peters aws_jupyterlab
```
## VSE faculty and students

If you are a member of the vse group, you should be able to find a shared image which contains all the software you need.  If you use it for your ec2 image, then you just have to edit the /etc/passwd-s3fs, add the env.list file, create a tunnel to your local computer, then use the second docker command above to start your server.
