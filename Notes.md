# Canvas Notes

组件名称：Canvas-Server  
安装文档：https://github.com/instructure/canvas-lms/wiki/Quick-Start
配置文档：  
支持平台： Debian家族 | RHEL家族 | Windows | Kubernetes |Docker  

责任人：zengxc

## 概要



## 环境要求

* 程序语言：
* 应用服务器：
* 数据库：postgresql
* 依赖组件：Ruby  nodejs
* 服务器配置：
* 其他：

## 安装说明


下面基于不同的安装平台，分别进行安装说明。

### CentOS

```shell


```

### Ubuntu

```shell
# using git clone canvas
  sudo apt-get install git
  git clone https://github.com/instructure/canvas-lms.git canvas
  cd canvas
  git checkout stable

#  external Dependencies Installation 
  sudo apt-get install software-properties-common
  sudo add-apt-repository ppa:brightbox/ruby-ng
  sudo apt-get update
# using common roles install ruby, postgresql, nodejs  
  sudo apt-get install ruby2.4 ruby2.4-dev zlib1g-dev libxml2-dev \
                       libsqlite3-dev postgresql-9.5 libpq-dev \
                       libxmlsec1-dev curl make g++

# install yarn: nodejs_roles
 curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | sudo apt-key add -
 echo "deb https://dl.yarnpkg.com/debian/ stable main" | sudo tee /etc/apt/sources.list.d/yarn.list
 sudo apt-get update && sudo apt-get install yarn=1.10.1-1

# set postgresql superuser : postgresql_roles
  sudo -u postgres createuser $USER
  sudo -u postgres psql -c "alter user $USER with superuser" postgres

# install bundler: ruby_roles
  sudo gem install bundler -v 1.13.6

# using bundler install canvas dependencies
  cd canvas
  bundle install
  yarn install --pure-lockfile
# Sometimes you have to run this command twice if there is an error
  yarn install --pure-lockfile

```

## 配置

安装完成后，需要依次完成如下配置

```shell
# default configuration
  ~/canvas$ for config in amazon_s3 delayed_jobs domain file_store outgoing_mail security external_migration; \
          do cp -v config/$config.yml.example config/$config.yml; done
# Dynamic configuration
  ~/canvas$ cp config/dynamic_settings.yml.example config/dynamic_settings.yml

#  
  ~/canvas$ bundle exec rails canvas:compile_assets

# sql configuration
  ~/canvas$ cp config/database.yml.example config/database.yml
  ~/canvas$ createdb canvas_development

# initial sql  交互式操作: 设置user pwd email
  ~/canvas$ bundle exec rails db:initial_setup

# test sql configuration
  psql -c 'CREATE USER canvas' -d postgres
  psql -c 'ALTER USER canvas CREATEDB' -d postgres
  createdb -U canvas canvas_test
  psql -c 'GRANT ALL PRIVILEGES ON DATABASE canvas_test TO canvas' -d canvas_test
  psql -c 'GRANT ALL PRIVILEGES ON ALL TABLES IN SCHEMA public TO canvas' -d canvas_test
  psql -c 'GRANT ALL PRIVILEGES ON ALL SEQUENCES IN SCHEMA public TO canvas' -d canvas_test
  RAILS_ENV=test bundle exec rails db:test:reset

  bundle exec rspec spec/models/assignment_spec.rb

# install redis improve canvas
  sudo apt-get update
  sudo apt-get install redis-server
  redis-server
  echo -e "development:\n  cache_store: redis_store" > config/cache_store.yml
  echo -e "development:\n  servers:\n  - redis://localhost" > config/redis.yml

```

## 路径

* 程序路径：/usr/lib/canvas/lib/canvas_server-*
* 日志路径：/var/log/canvas  
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

本项目安装后自动生成：canvas-server 服务

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

#### 本项目需要开启哪些端口？

| item      | port  |
| --------- | ----- |
|  | |


#### 有没有CLI工具？



#### 安装后是否需要创建普通用户？


### 日志

