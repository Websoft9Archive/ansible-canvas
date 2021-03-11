# SMTP

大量用户实践反馈，使用**第三方 SMTP 服务发送邮件**是一种最稳定可靠的方式。  

请勿在服务器上安装sendmail等邮件系统，因为邮件系统的路由配置受制与域名、防火墙、路由等多种因素制约，非常不稳定，且不易维护、诊断故障很困难。

下面提供设置 Canvas 发邮件的步骤：

1. 在网易邮箱管理控制台获取 SMTP 相关参数
   ```
   SMTP host: smtp.163.com
   SMTP port: 465 or 994 for SSL-encrypted email
   SMTP Authentication: must be checked
   SMTP Encryption: must SSL
   SMTP username: websoft9@163.com
   SMTP password: #wwBJ8    //此密码不是邮箱密码，是需要通过163邮箱后台设置去获取的授权码
   ```
2. 使用 SSH 登录服务器，修改 */data/wwwroot/canvas/config/outgoing_mail.yml* 文件后保存
   ```
   production:
   address: smtp.163.com
   port: 465
   user_name: websoft9@163.com
   password: #wwBJ8
   authentication: plain        # plain, login, or cram_md5
   domain: smtp.163.com
   outgoing_address: websoft9@163.com
   default_name: Instructure Canvas
   ```
   > 以上配置如果不能收到邮件，请尝试将 authentication 改为 login**

3. 给 Canvas [配置域名](/zh/solution-more.md)，并确保可以访问

   > 配置域名很重要，否则即使收到邮件，里面的链接也无法打开。如果没有配置 SSL 证书，打开链接时会有安全提示，忽略即可。

4. 重启 Apache 服务
   ```
   systemctl restart apache
   ```

> 很多用户反馈，Canvas部署在中国大陆之外（比如香港）区域，方可成功发出邮件。原因未知。

更多邮箱设置（QQ邮箱，阿里云邮箱，Gmail，Hotmail等）以及无法发送邮件等故障之诊断，请参考由Websoft9提供的 [SMTP 专题指南](https://support.websoft9.com/docs/faq/zh/tech-smtp.html)