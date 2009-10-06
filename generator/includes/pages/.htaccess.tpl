.htaccess file
%%%
AddType application/rss+xml rss

<IfModule mod_rewrite.c>
	RewriteEngine off
</IfModule>

ErrorDocument 404 [PREFIX]404.html
