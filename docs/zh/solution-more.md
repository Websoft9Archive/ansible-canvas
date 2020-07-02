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
