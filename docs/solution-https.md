# SSL/HTTPS

Jenkins deployment package has installed the SSL module of Nginx and open Certificate Authority **[Let's Encrypt](https://letsencrypt.org/)** for you configure the HTTPS quickly and conveniently.

> In addition to the vhost configuration file, HTTPS settings do not need to modify any files in Nginx

## Quick start

### Automatic deployment

If you want to use a free certificate, just run the one command `sudo certbot` on your instance to start the HTTPS deployment.

```
sudo certbot
```

### Manual deployment

If you have applied for a commercial certificate, complete the HTTPS configuration in just three steps:

1. Upload your certificate to the directory of your instance: */data/cert* 
2. Edit the vhost configuration file: */etc/httpd/conf.d/vhost.conf* 
3. Insert the **HTTPS template** into *server{  }* and modify to your certificate path
   ``` text
   #-----HTTPS template start------------
   <VirtualHost *:443>
     ServerName canvas.example.com
     #ServerAlias canvasfiles.example.com
     #ServerAdmin youremail@example.com
     DocumentRoot /data/wwwroot/canvas/public
     ErrorLog /var/log/apache2/canvas_errors.log
     LogLevel warn
     CustomLog /var/log/apache2/canvas_ssl_access.log combined
     SSLEngine on
     BrowserMatch "MSIE [17-9]" ssl-unclean-shutdown
     # the following ssl certificate files are generated for you from the ssl-cert package.
     SSLCertificateFile /data/cert/ssl-cert-snakeoil.pem
     SSLCertificateKeyFile /data/cert/ssl-cert-snakeoil.key
     SetEnv RAILS_ENV production
     <Directory /data/wwwroot/canvas/public>
       Allow from all
       Options -MultiViews
     </Directory>
   </VirtualHost>
   #-----HTTPS template end------------
   ```
   
4. Save file and [Restart Apache service](/admin-services.md)

## Special Guide

For details on configuring HTTPS pre-conditions, HTTPS configuration segment templates, precautions, detailed steps, and troubleshooting, refer to the [HTTPS Special Guide](https://support.websoft9.com/docs/faq/tech-https.html#nginx) provided by Websoft9 
