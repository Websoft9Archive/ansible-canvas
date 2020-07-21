# CHANGELOG

## To do

1. 更详细的规范说明

## Logs
* 使用系统普通用户安装canvas时,postgresql会直接创建root用户,导致没有权限启动apache2与canvas-init服务,其原因可能普通用户已经经过sudo提权。   
解决方案: 在shell下加入如下参数"remote_user: connection=local",临时切换本地用户。 

### Bug Fixes

* 2020-02-14  

### Features

* 2020-03-27  创建本模板语法
