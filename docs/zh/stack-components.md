---
sidebarDepth: 3
---

# 参数

Canvas 预装包包含 Canvas 运行所需一序列支撑软件（简称为“组件”），下面列出主要组件名称、安装路径、配置文件地址、端口、版本等重要的信息。

## 路径

### Canvas

Canvas 安装目录： */data/wwwroot/canvas*  
Canvas 日志目录： */data/wwwroot/canvas/log*  
Canvas 配置目录： */data/wwwroot/canvas/config*  

### Apache

Apache 虚拟主机配置文件：*/etc/httpd/conf.d/vhost.conf*  
Apache 主配置文件：*/etc/httpd/conf/httpd.conf*  
Apache 日志文件：*/var/log/httpd*

### Passenger

Passenger 安装目录：*/usr/lib/ruby/vendor_ruby/phusion_passenger*  
Passenger 配置文件：*/etc/apache2/mods-enabled/passenger.conf*

### Node.js

Node.JS 模块目录: */usr/lib/node_modules*  
Node.js 应用安装目录: */data/wwwroot*  
Node.JS 日志文件: */root/.pm2/pm2.log*

### Ruby

Ruby 安装目录：*/usr/lib/ruby*  

### PostgreSQL

PostgreSQL 配置文件: */data/postgresql/config*  
PostgreSQL 数据目录：*/data/postgresql/pgdata*  
PostgreSQL 日志目录: */data/postgresql/log

## 端口号

在云服务器中，通过 **[安全组设置](https://support.websoft9.com/docs/faq/zh/tech-instance.html)** 来控制（开启或关闭）端口是否可以被外部访问。 

通过命令`netstat -tunlp` 看查看相关端口，下面列出可能要用到的端口：

| 名称 | 端口号 | 用途 |  必要性 |
| --- | --- | --- | --- |
| TCP | 80 | 通过 HTTP 访问 Canvas | 可选 |
| TCP | 443 | 通过 HTTPS 访问 Canvas  | 可选 |
| TCP | 9090 | PostgreSQL 可视化管理 | 可选 |
| TCP | 5432 | PostgreSQL 服务端 | 可选 |

## 版本号

组件版本号可以通过云市场商品页面查看。但部署到您的服务器之后，组件会自动进行更新导致版本号有一定的变化，故精准的版本号请通过在服务器上运行命令查看：

```shell
# Check all components version
sudo cat /data/logs/install_version.txt

# Linux Version
lsb_release -a

# Apache version on Centos
httpd -v

# Apache version on Ubuntu
apache2 -v

# Passenger version
passenger -v

# Ruby version
ruby -v

# Node.js version
node -v

# Docker Version
docker -v
```
