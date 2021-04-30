# 初始化安装

在云服务器上部署 Canvas 预装包之后，请参考下面的步骤快速入门。

## 准备

1. 在云控制台获取您的 **服务器公网IP地址** 
2. 在云控制台安全组中，检查 **Inbound（入）规则** 下的 **TCP:80** 端口是否开启
3. 若想用域名访问 Canvas，请先到 **域名控制台** 完成一个域名解析

## Canvas 安装向导

1. 使用本地电脑的 Chrome 或 Firefox 浏览器访问网址：*http://域名* 或 *http://服务器公网IP*, 进入登录页面
   ![canvas 登录](https://libs.websoft9.com/Websoft9/DocsPicture/zh/canvas/canvas-login-websoft9.png)

2. 输入账号密码（[不知道账号密码？](/zh/stack-accounts.md#canvas)），成功登录到 Canvas 后台  
   ![canvas 后台](https://libs.websoft9.com/Websoft9/DocsPicture/zh/canvas/canvas-console001-websoft9.png)

3. 依次打开：【管理员】>【设置】>【账户设置】设置语言  
   ![canvas 设置语言](https://libs.websoft9.com/Websoft9/DocsPicture/zh/canvas/canvas-setlanguage-websoft9.png)

4. 依次打开：【账户】>【设置】>【编辑设置】修改默认邮件账户和密码
   ![canvas 修改账号](https://libs.websoft9.com/Websoft9/DocsPicture/zh/canvas/canvas-setaccount001-websoft9.png)
   ![canvas 修改密码](https://libs.websoft9.com/Websoft9/DocsPicture/zh/canvas/canvas-setaccount002-websoft9.png)

5. 开放注册：【管理员】>【身份验证设置】>【提供者】开放教师和学生注册 
   ![canvas 开放注册](https://libs.websoft9.com/Websoft9/DocsPicture/zh/canvas/canvas-register-websoft9.png)

## Canvas 入门向导

编写中... (欢迎您投稿)

> 需要了解更多 Canvas 的使用，请参考官方文档：[Canvas Guides](https://community.canvaslms.com/community/answers/guides)

## 常见问题

#### 浏览器打开IP地址，无法访问 Canvas（白屏没有结果）？

您的服务器对应的安全组 80 端口没有开启（入规则），导致浏览器无法访问到服务器的任何内容

#### Canvas 访问速度很慢？

Canvas 对服务器的配置要求极高，最低配置为2核8G
