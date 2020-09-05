$sitename = Read-Host "Enter your site name"

Write-Host "Site name:{$sitename}";

$sitetitle = Read-Host "Enter your site title"

Write-Host "Site title:{$sitetitle}";

$sitedb = $sitename + '_db';

$sitedb_user = "root";

$sitedb_pass = "";

mkdir $sitename;

Set-Location $sitename;

wp core download;

wp config create --dbname=$sitedb --dbuser=$sitedb_user --dbpass=$sitedb_pass;

wp db create;

$url = "localhost/${sitename}" 

wp core install --url=$url --title=sitetitle --admin_user=admin --admin_password=password --admin_email=info@example.com
