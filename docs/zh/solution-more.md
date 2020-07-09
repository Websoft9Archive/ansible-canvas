# 更多...

下面每一个方案，都经过实践证明行之有效，希望能够对你有帮助

## 域名绑定

当服务器上只有一个网站时，不做域名绑定也可以访问网站。但从安全和维护考量，**域名绑定**不可省却。

以示例网站为例，域名绑定操作步骤如下：

1. 确保域名解析已经生效  
2. 使用 SFTP 工具登录云服务器
3. 修改 [Apache虚拟机主机配置文件](/zh/stack-components.md#apache)，将其中的 **server_name** 项的值修改为你的域名
   ```text
   <VirtualHost *:80>
   ServerName canvas.example.com
   ...
   </VirtualHost>
   ```
4. 保存配置文件，重启 [Apache 服务](/zh/admin-services.md#apache)

## 初始化 Canvas

如果你忘记了管理员密码，又无法通过邮件找回密码，就只能初始化 Canvas。

使用 SSH 连接服务器，运行下面的命令后就可以使用：help@websoft9.com/websoft9 登录。

```
export RAILS_ENV=production
export CANVAS_LMS_ADMIN_EMAIL=help@websoft9.com
export CANVAS_LMS_ADMIN_PASSWORD=websoft9
export CANVAS_LMS_ACCOUNT_NAME=admin
export CANVAS_LMS_STATS_COLLECTION=opt_in
cd /data/wwwroot/canvas; bundle exec rake db:initial_setup
```

> 初始化可能会删除历史数据
