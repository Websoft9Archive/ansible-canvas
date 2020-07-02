# Canvas Notes

组件名称：Canvas-Server  
安装文档：https://github.com/instructure/canvas-lms/wiki/Quick-Start
配置文档：  
支持平台： Debian家族 | RHEL家族 | Windows | Kubernetes |Docker  

责任人：zengxc

## 概要

Canvas 是一个开源LMS系统。


## 环境要求

* 程序语言：Ruby,Nodejs
* 应用服务器：Apache,Passenger
* 数据库：postgresql
* 依赖组件：
* 服务器配置：最低2核8G
* 其他：

## 安装说明

下面基于不同的安装平台，分别进行安装说明。



## 路径

* 程序路径：/data/wwwroot/canvas
* 日志路径：  
* 配置文件路径：  
* 其他...

## 账号密码

### 数据库密码

如果有数据库

* 数据库安装方式：包管理工具自带 or 自行安装
* 账号密码：

### 后台账号

如果有后台账号

* 登录地址
* 账号密码
* 密码修改方案：最好是有命令行修改密码的方案


## 服务

本项目安装后：无服务

备注：如果开机没有服务，程序无法运行的情况下，需要自行编写服务后存放到项目中

服务的模板如下：

```

```

## 环境变量

列出需要增加的环境变量以及增加环境变量的命令：

* 名称 | 路径

## 版本号

通过如下的命令获取主要组件的版本号: 

```
# Check Canvas version

```

## 常见问题

#### 有没有管理控制台？

通过*http:// 公网 IP:3000*访问管理控制台
配置apche后可通过ip直接访问 

#### 本项目需要开启哪些端口？

| item      | port  |
| --------- | ----- |
|  apache2  |   80  |
|docker-proxy| 9090 |
| apache2   |  443  |
| postgres  |  5432 |

#### 有没有CLI工具？
无


#### 安装后是否需要创建普通用户？

需创建普通用户,还需将当前系统用户创建为postgresql superadmin 

### 日志

