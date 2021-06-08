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
* 其他：passenger 基于ruby开发的，所以安装时会自动安装ruby，ruby命令全局可用。故,在组合项目中，role_passenger 必须在 role_ruby 之前安装，以保证 role_ruby 安装结果不会被破坏

## 安装说明

Canvas 的安装难点集中在如下几个方面：

* 依赖 Apache HTTP Server 和 Passenger 应用服务器
* 安装的时候需要最少两个 PostgreSQL 用户，一个是 *canvas*， 另外一个是当前操作系统用户，例如 *root*
* 初始化 `bundle exec rake db:initial_setup` 依赖于环境变量
* production and development 版本安装方式不同，前者更为复杂
* 后台的密码随机化只能通过初始化去实现


## 账号密码

### 数据库密码

* 数据库安装方式：自行安装
* 账号密码： canvas/随机密码

### 后台账号

如果有后台账号

* 登录地址：公网IP
* 账号密码：help@websoft9.com
* 密码修改方案： 通过 bundle exec rake db:initial_setup 实现


## 服务

除了公共role之外，本程序提供额外的服务：canvas_init

## 环境变量

列出需要增加的环境变量以及增加环境变量的命令：

* 名称 | 路径

## 版本号

暂时没有找到 Canvas 版本号获取的方案

## 常见问题

#### 有没有管理控制台？

配置 Apache 后可通过 IP 直接访问 

#### 本项目需要开启哪些端口？

| item      | port  |
| --------- | ----- |
| HTTP |   80  |
| phpPgadmin| 9090 |
| HTTPS   |  443  |

#### 有没有CLI工具？

/data/wwwroot/canvas/script 下有一些可用的脚本

#### 安装后是否需要创建普通用户？

Linux需创建普通用户 canvas，还需他设置为 PostgreSQL 的 superadmin 

