# Ec2 using terraform

Creating an ec2 instance on aws is easy enough, but slow because of the console.  There is another way to do it from the command line that has two advantages.  It is faster because you won't have to look up your credentials and log in to the aws console.  Then, when you are finished, it is easy to destroy all the resources you created - an important part of making sure you aren't paying for an ec2 instance that isn't doing anything.

In this note I'll explain how to start and instance from your command line using an image that you have previously created.  Once you are set up this is the workflow:

1. At the command line type `terraform apply`.
1. Wait for a bit for the instance to be created - seems to take about 5 minutes.
1.  ssh to your instance using the url that is returned by terraform and do your work.
1. When you are finished, exit from your ssh connection and type `terraform destroy`.

To get this to work you'll need an aws account with an aws_access_key_id and and aws_secret_access_key.   You'll need to provide the name that you gave to these keys when you created them  when you edit the terraform file I will provide below.  I am going to call the keys `my_aws_key_name`  when I use it in the file below.

If you have used an ec2 instance before, you'll know the name of your keys.  If you haven't, you will create that name when you create a user (called an iam user in aws).

You'll also need to install two programs - `aws-cli` and `terraform`.

For aws-cli, you can try the instructions at [https://linuxhint.com/install_aws_cli_ubuntu/](https://linuxhint.com/install_aws_cli_ubuntu/) or use the equivalent for your operating system.

For terraform, try [https://askubuntu.com/questions/983351/how-to-install-terraform-in-ubuntu](https://askubuntu.com/questions/983351/how-to-install-terraform-in-ubuntu).

When you install aws-cli you'll have to make sure to configure it (explained in the link above) to provide your aws region and your access_key_id and the key itself.

## First step

Now the programs are installed and aws is configured, you can get to work.  The first time you try this you might find it helpful to open the aws console on your web browser so you can see what is going on .

Create a directory somewhere on your computer then change into it (I am assuming you are working on the command line).  For example, you might use my_ec2 as the name of the directory, so 
```
mkdir my_ec2
cd my_ec2
```
Now you'll need to set up terraform by running the following command:
```
terraform init
```
Anytime you want to start your instance in the future, you can just return to this directory.

## The terraform file.

In the directory `my_ec2` that you created, you'll want to create a file called, say `ec2.tf`.   You can copy the one I'll give below, but you'll need to edit two pieces of information.  You'll have to supply the name of you access key pair at aws, and you'll have to provide an ami (computer image) id that works in your region.  I'll explain how to accomplish that below.  

For the moment, if you are using `us-east-2` as your region, you can use the ami id that is in the file. It is a public ami which provides you with a computer running fedora 8 along with some installed software that runs jupyter notebook.

Here is the file (is also contained in the github repo):
```
provider "aws" {
  region     = "us-east-2"
}

resource "aws_instance" "mike_jupyter" {
  ami           = "ami-09922c12456eee846"
  instance_type = "t2.small"
  security_groups = ["${aws_security_group.allow_ssh.name}"]
  key_name = "my_aws_key_name"
}

resource "aws_security_group" "allow_ssh" {
  name        = "allow ssh"
  description = "only ssh"

  ingress {
    from_port   = 22
    to_port     = 22
    protocol    = "TCP"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    from_port       = 0
    to_port         = 0
    protocol        = "-1"
    cidr_blocks     = ["0.0.0.0/0"]
  }
}


output "url" {
  value = "${aws_instance.mike_jupyter.public_dns}"
}
output "ip" {
  value = "${aws_instance.mike_jupyter.public_ip}"
}
```

I use this image for running jupyter notebooks.  I specified the instance type as `t2.small` because that image is free-tier eligible.  The image that works for me is `t2.large`.  You can replace the image type in the file above if you actually want to do something.

Once you have edited the ec2.tf file with you keys and image id you can try
```
terraform apply
```
The command will point out any syntax errors or other problems with your file. If it succeeds it will show you what it is planning to do.  If you are happy with it use
```
terraform apply
```
After working for a number of seconds it should give you the url of your instance and its ip.  If you are watching the aws console, you'll see that the instance isn't quite ready at that point.  The console will eventually tell you all the checks have passed at which point you can ssh into your instance.

As mentioned above, do your work on the new instance.  When you are finished and terminate the ssh session run
```
terraform destroy
```
This will ensure that all the resources you used with your work will be destroyed.

## Some additional considerations

### Data transfer

When you destroy your instance you destroy everything including any files you may have saved on the instance itself.   

In the course of using your instance, you may need to transfer data to the instance.  You can do this using rsync (on linux anyway) or any other transfer program each time you restart this instance this way.  You'll also have to make sure to transfer any output that you create while you are working back to your computer.

If you don't want to do this continual data transfer, the cheapest way to proceed is to create an S3 bucket on aws.  An S3 bucket is the aws way of saying "a permanent data store on disk".  If you want to see how to attach an S3 bucket to your instance you can look at [https://github.com/michaelpetersubc/documentation/blob/master/jupyterlab.md](https://github.com/michaelpetersubc/documentation/blob/master/jupyterlab.md) to see how I do it with the jupyterlab instance, or any of the other documentation on the internet.

### How to ssh

When you create your keys on aws you need to make sure to save them on your own computer.  The file you'll download with your keys is something with a .pem extension.  In my example above, the keys are called `my_aws_keys` so my file with keys is called `my_aws_keys.pem` and I stored it in a directory called .ssh in my home directory.

When terraform finishes (at least if you use the ec2.tf file above) it will give you the url for your instance, which will be something like
```
aaaaaaaaa.compute.amazonaws.com
```
To connect to it using ssh you would then use

```
ssh -i .ssh/my_aws_keys.pem ec2-user@aaaaaaa.compute.amazonaws.com
```
### Your image
You'll want to replace the image id I used above in your version of the ec2.tf file.  You may want something other than a rhel 8 linux instance.  you may find I have built in too much disk space.  You are paying for everything you use on aws so this might be a consideration even if you are funding your work with a grant.

Even if you like the rhel 8 image, you'll want to modify it for your own uses by installing special software, or making the modifications you need to connect to your S3 bucket permanent.

This you should just do this at the aws console since it shouldn't need to make changes too often.  When you see your running image in the console, one of the actions is to create an image.  Use that - just do it while the image is still running.  Once your image is created you can look up its id (leave it private so you give away any credentials) and replace the image id in the ec2.tf file above with the id of your own image.  Then when you start the image using terraform, all your modifications will be there.

When you save this image, it will include any software you have installed and any files you have added to your instance.  The best way to deal with files you'll need again  is not to save a new image each you finish working, but to save these files in an S3 bucket.  The point of the bucket is that is preserved between uses.  

An S3 bucket will also allow you to transfer data to the bucket without creating an ec2 instance, which is going to be both cheaper and easier.
You will pay for images stored on aws, so make sure to delete (or unregister as they say at aws) any old ones