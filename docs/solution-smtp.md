# SMTP

Sending mail is a common feature for Canvas. After a large number of user practice feedback, only one way is recommended, that is, using the **third-party STMP service** to send the email.

> Do not try to install **Sendmail** or other Mail server software on your Cloud Server for sending mail, because it is very difficulty in maintenance.

Follow is the sample using **SendGrid's SMTP Service** to configure sending mail for Metabase:

1. Log in SendGrid console, prepare your SMTP settings like the follow sample
   ```
   SMTP host: smtp.sendgrid.net
   SMTP port: 25 or 587 for unencrypted/TLS email, 465 for SSL-encrypted email
   SMTP Authentication: must be checked
   SMTP Encryption: must SSL
   SMTP username: websoft9smpt
   SMTP password: #fdfwwBJ8f    
   ```
2. Use SFTP or SSH to modify the email configuration file on your Server: */data/wwwroot/canvas/config/outgoing_mail.yml*
   ```
   production:
   address: smtp.sendgrid.net
   port: 465
   user_name: websoft9smpt
   password: #fdfwwBJ8f    
   authentication: plain        # plain, login, or cram_md5
   domain: smtp.sendgrid.net
   outgoing_address: sendgrid.net
   default_name: Instructure Canvas
   ```
   >  If you can't receive email, try to modify the item `authentication: plain` to `authentication: login` 

3. Complete the Canvas [Domain name configuration](/solution-more.md) and make sure it's successful

   > Domain is very important, if you don't configure Domain for Canvas, the links can't be opened in the email send to user. If you don't configure SSL for canvas, there may have security reminder when you click the links

4. Restart Apache service
   ```
   systemctl restart apache
   ```

More SMTP Service(Gmail, Hotmail, QQ mail, Yahoo mail, SendGrid and so on)  settings or Issues with SMTP, please refer to Websoft9's *[SMTP Guide](https://support.websoft9.com/docs/faq/tech-smtp.html)*
