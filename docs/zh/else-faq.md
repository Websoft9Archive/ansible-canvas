# FAQ

#### Canvas 开源版是否提供移动端？

支持手机浏览器、Android 和 IOS 移动端。 详情参考：[mobile-guide](https://community.canvaslms.com/community/answers/guides/mobile-guide)

#### Canvas 支持中文吗

支持包括中文、英文等二十多种语言

#### Canvas 怎么安装插件？

通过BigBlueButton为例，步骤如下：

1. 登陆 Canvas 站点

2. 通过URL：*http://域名/plugins* 或 *http://服务器公网IP/plugins*, 进入插件选择页面
   ![canvas 插件](https://libs.websoft9.com/Websoft9/DocsPicture/zh/canvas/canvas-plugin01-websoft9.png)

3. 选择您要安装的插件，点击安装

4. 在插件安装页面，去掉勾选【禁用此插件】，输入相关引导信息，点击【申请】
   ![canvas 插件设置](https://libs.websoft9.com/Websoft9/DocsPicture/zh/canvas/canvas-plugin02-websoft9.png)
   ![canvas 插件设置](https://libs.websoft9.com/Websoft9/DocsPicture/zh/canvas/canvas-plugin03-websoft9.png)

5. 安装插件前后，页面已经发生变化（课程中追加了BigBlueButton对应的会议功能）
   ![canvas 插件安装前后对比](https://libs.websoft9.com/Websoft9/DocsPicture/zh/canvas/canvas-plugin04-websoft9.png)
   ![canvas 插件安装前后对比](https://libs.websoft9.com/Websoft9/DocsPicture/zh/canvas/canvas-plugin05-websoft9.png)

#### 是否可以通过命令行修改或重置 Canvas 管理员密码？

Canvas 官方没有提供。

#### 如果没有域名是否可以部署 Canvas？

可以，部署完成后通过：*http://公网IP* 访问即可

#### Canvas 官方云版本与 OpenSource 版本有区别吗？

有。具体参考 [code differences between the open source and hosted offerings](https://github.com/instructure/canvas-lms/wiki/FAQ#does-canvas-support-any-extensions)

#### 数据库 root 用户对应的密码是多少？

密码存放在服务器相关文件中：`/credentials/password.txt`

#### 是否有可视化的数据库管理工具？

有，参考[PostgreSQL管理](/zh/admin-postgresql.md)

#### 是否可以修改Canvas的源码路径？

可以，通过修改 Apache 虚拟主机配置文件实现

#### 如何修改上传的文件权限?

```shell
# 拥有者
chown -R canvas.canvas /data/wwwroot/canvas
# 读写执行权限
find /data/wwwroot/canvas -type d -exec chmod 750 {} \;
find /data/wwwroot/canvas -type f -exec chmod 640 {} \;
```

#### Canvas 根目录同时需要赋予用户 canvas 和 www-data （Apache用户）权限，是如何做到的？

拥有者是 canvas，同时通过 setfacl 额外给 www-data 赋予权限

```
setfacl -m u:www-data:rx -R /data/wwwroot/canvas
```
#### 推荐一个国内学习 Canvas 的网站

小编认为[上海交通大学教育技术中心](https://v.sjtu.edu.cn/guide/)还不错

#### 部署和安装有什么区别？

部署是将一序列软件按照不同顺序，先后安装并配置到服务器的过程，是一个复杂的系统工程。  
安装是将单一的软件拷贝到服务器之后，启动安装向导完成初始化配置的过程。  
安装相对于部署来说更简单一些。 

#### 云平台是什么意思？

云平台指提供云计算服务的平台厂家，例如：Azure,AWS,阿里云,华为云,腾讯云等

#### 实例，云服务器，虚拟机，ECS，EC2，CVM，VM有什么区别？

没有区别，只是不同厂家所采用的专业术语，实际上都是云服务器