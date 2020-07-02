# SSL/HTTPS

网站完成域名绑定且可以通过HTTP访问之后，方可设置 HTTPS。

Canvas 预装包，已安装Web服务器 SSL 模块和公共免费证书方案 [Let's Encrypt](https://letsencrypt.org/) ，并完成预配置。

> 除了虚拟主机配置文件之外，HTTPS设置无需修改Nginx任何文件

## 快速指南

### 自动部署

如果没有申请证书，只需在服务器中运行一条命令`certbot`便可以启动免费证书**自动**申请和部署

```
sudo certbot
```

### 手动部署

如果你已经申请了商业证书，只需三个步骤，即可完成HTTPS配置

1. 将申请的证书、 证书链文件和秘钥文件上传到 */data/cert* 目录
2. 打开虚拟主机配置文件：*/etc/httpd/conf.d/vhost.conf* ，插入**HTTPS 配置段** 到 *server{ }* 中
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
      SSLCertificateFile /etc/ssl/certs/ssl-cert-snakeoil.pem
      SSLCertificateKeyFile /etc/ssl/private/ssl-cert-snakeoil.key
      SetEnv RAILS_ENV production
      <Directory /data/wwwroot/canvas/public>
        Allow from all
        Options -MultiViews
      </Directory>
    </VirtualHost>
   #-----HTTPS template end------------
   ```
3. 如果打算设置 HTTP 自动跳转到 HTTPS，请找到 `<VirtualHost *:80>..</VirtualHost>`中下面的内容，并删除#
    ```
    #RewriteEngine On
    #RewriteCond %{HTTP:X-Forwarded-Proto} !=https
    #RewriteCond %{REQUEST_URI} !^/health_check
    #RewriteRule (.*) https://%{HTTP_HOST}%{REQUEST_URI} [L]
    ```
4. 重启 Apache 服务后生效
   ```
   systemctl restart apache
   ```

## 专题指南

若参考上面的**快速指南**仍无法成功设置HTTPS访问，请阅读由Websoft9提供的 [《HTTPS 专题指南》](https://support.websoft9.com/docs/faq/zh/tech-https.html#nginx)

HTTPS专题指南方案包括：HTTPS前置条件、HTTPS 配置段模板、注意事项、详细步骤以及故障诊断等具体方案。