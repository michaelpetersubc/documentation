## Two way api

This is a description of a method to separate the code that separates the administrative interface from the algorithm.  The advantage of this architecture is that you can farm out algorithm development and maintenance to faculty members and students who might want to write the code in a language other than php (for example, as it worked in economics).

To illustrate I'll use an example using one of my servers (montoya) as the source of the algorithm and I'll assume AIR is the name of the server hosting the adminstrative code.

### Step 1  Api on montoya (the algorithm server)
 Apis are quite simple. To create them you need to modify the web server configuration, then create php code that has an index.php file and and possibly a classes.php file.  I'll give the apache instructions, but there are surely direct analogs for other servers.

``` apacheconf
<VirtualHost 0.0.0.0:443>
........
Alias "/api" "/code/ta_alloc/api" 
<Directory "/code/ta_alloc/api">
Require ip <the AIR server ip address>
Options FollowSymLinks
SSLRequireSSL
RewriteEngine on
RewriteCond %REQUEST_FILENAME !-f                                      
RewriteCond %{REQUEST_FILENAME} !-d  
RewriteCond %{HTTP_HOST} ^montoya\.econ\.ubc\.ca$ [NC]
RewriteCond %{REQUEST_URI} ^/api/(.*)$
RewriteCond %{REQUEST_URI} !index
RewriteRule ^(.*)$ /api/index.php [L,QSA]
</Directory>
.....
</Virtualhost>
```

Here, security is handled by restricting access to the api to trusted hosts.  In practise this would be the ip address of the AIR server.

There is no reason why this needs to be a remote host. This could be changed to be an api on the AIR server itself.  Back to that in a moment.

The api opens a file called `index.php` which is located at `/data2/peters/code/ta_alloc/api`.  This path is on the algorithm server.  Here this the code

``` php
<?php
$script = 
 '/home/peters/code/ta_allocation/script.sh 2>&1';
$handle = popen($script, 'r');

$contents = '';
while(!feof($handle)) {
  $contents .= fread($handle, 2096);
}
pclose($handle);
echo $contents;
?>
```

The `$script` variable is the path to a script that runs a `julia` program that runs the algorithm.  To implement this on the AIR server instead of on a remote server, the script would run a php script on AIR, for example, your tranlation of the julia script.

It might seem this is too much complexity just to run a php script that you could embed in your code.  The advantage this gives is that by separating your php script and making it separatE people who want to change the algorithm but don't care about the management code, can do so by testing local modifications to the script then submitting a pull request on github.  You make it possible to manage and improve the algorithm by outsourcing it to people who have the desire and skills to change it.

It also makes it possible to switch the api to serve it from another server that supports languages like `julia` because they have programmers who are trained in that language.

### Step 2 - the api on the AIR server

The algorithm needs information on preferences to find the best matching.  In economics, these preferences change three times every year.  The way the `julia` code gets this information is by consulting an api.  Currently this api sits on the old inside.econ.server.

The apache configuration is the same as it is on the algorithm server (with paths appropriately modified).  The api code is more complicated since it has to query information from the database server on the AIR server.

The code that was used on inside is in the [https://github.com/michaelpetersubc/ta_alloc/tree/main/php](https://github.com/michaelpetersubc/ta_alloc/tree/main/php) github repository.  The is the same repository which contains the module code you adapted to set up the adminstrative software.  The code in this case is in the top level of the php directory and consists of three files, an `index.php` that translates requests and passes them off to be processed, a `classes.php` that contains the processing software, and a `utilities.php` file has some helper code.

The autoload file loads the database driver (`illuminate` [https://github.com/illuminate/database](https://github.com/illuminate/database)), but you probably have your own mysql driver software.

The handler class is written in longhand so what it does should be apparent.  Since Peter claimed he was adapating database structure from inside, the query statements will probably work out of the box.

It is easy to test an api because you can just call it from your browser to see what it returns (of course, you need to restrict the ip addresses that can use it, as descibed above).  The api always returns json. If the return types of your mysql driver are different than they are with illuminate that would probably cause problems with the julia version of the algorithm. 

### Step 3 - running the code on the management server.  

Devin has to be able to run the algorithm while he is working on air. On the inside.econ management site, the php code triggers the local julia version of the algorithm using `popen()`.  With dual apis, the approach is slightly different.

First, instead of using `popen` you would use curl.  Here is a curl class you can use

``` php
class CurlClient {
  public static function get() {
    $url = 'https://montoya.econ.ubc.ca/api';
    $curl = curl_init ();
    curl_setopt ( $curl, CURLOPT_URL, $url );
    curl_setopt ( $curl, CURLOPT_HEADER, false );
    curl_setopt ( $curl, CURLOPT_FOLLOWLOCATION, true );
    curl_setopt ( $curl, CURLOPT_RETURNTRANSFER, true );
    curl_setopt ( $curl, CURLOPT_ENCODING, "" );
    $curl_data = curl_exec ( $curl );
    curl_close ( $curl );
    return $curl_data;
  }
}
```

This class calls the algorithm server and asks it to run the algorithm.  It returns the matching as a json string.  Decoding the string gives  an array of arrays.  Then length of the outer array varies, but the inner arrays each have two elements.  The first element is a block id representing a ta assignment.  The second element is a student_block_allocation which identifies the student assigned to that block allocation.  The management software then has to insert this data into the appropriate `deferred_acceptance_outcome` table.

In the management code on AIR the way the program is run would then be
```
$data = json_decode(T\Curlclient::get());
foreach($data as $d) {
  query = "insert into deferred_acceptance_outcome set block_id=?,student_block_id=?,session_id=?";
  \**
   #pseudo code
   query = "insert into deferred_acceptance_outcome set block_id=?,student_block_id=?,session_id=?";
   db:exec($query, [$d[0], $d[1]]);
  **\

}
```
This assumes the curl client class is stored in `ta_alloc_namespaced_classes.php` file.