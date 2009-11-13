.htaccess file
%%%
AddType application/rss+xml rss

<IfModule mod_rewrite.c>
	RewriteEngine off
</IfModule>

ErrorDocument 404 [PREFIX]404.html

<IfModule mod_expires.c>
	ExpiresActive On
	ExpiresByType image/gif "access plus 1 month"
	ExpiresByType image/jpg "access plus 1 month"
	ExpiresByType image/png "access plus 1 month"
	ExpiresDefault "modification plus 1 week"
</IfModule>

<IfModule mod_headers.c>
	<Files index.html>
		Header append Cache-Control "public, must-revalidate"
	</Files>
</IfModule>
