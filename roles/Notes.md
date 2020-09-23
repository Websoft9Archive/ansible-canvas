## Canvas 

OnlyOffice的产品家族比较复杂，根据官方的介绍，可以分为：

* ENTERPRISE EDITION：企业版
* COMMUNITY EDITION：开源版
* INTEGRATION EDITION：比如集成了 ownCloud 的版本
* DEVELOPER EDITION：开发者版本

其中每一个版本都是由：Community Server, Document Server, Mail Server 组成。  


COMMUNITY EDITION 是一个完全免费的版本。DEVELOPER EDITION 是一个适用于开发者的[收费版本](https://www.onlyoffice.com/zh/developer-edition-prices.aspx)。

## 安装方式
按照官方的说明，我们采取编译安装的方式

### 坑

1. canvas用户的密码初期设置需要8位，默认为12345678，否则安装报错
```
echo "[mysqld]
sql_mode = 'NO_ENGINE_SUBSTITUTION'
max_connections = 1000
max_allowed_packet = 1048576000
group_concat_max_len = 2048
log-error = /var/log/mysql/error.log" > /app/onlyoffice/mysql/conf.d/onlyoffice.cnf
```

2. canvas密码随机的时候，通过systemed启动init服务，无法改变ruby里面的环境变量，我们采取
修改ruby配置环境的方式
```
# Canvas ENV Configure
- block:
  - name: Copy local_env file
    copy:
      src: local_env.yml
      dest: /data/wwwroot/canvas/config/local_env.yml
      
  - name: Set config/local_env.yml into .gitignore
    blockinfile:
      path: /data/wwwroot/canvas/.gitignore
      block: |
        /config/local_env.yml
  - name: Add local_env.yml into application.rb
    blockinfile:
      path: /data/wwwroot/canvas/config/application.rb
      insertafter: "ActiveSupport.to_time_preserves_timezone = true"
      block: |
        config.before_configuration do
          env_file = File.join(Rails.root, 'config', 'local_env.yml')
          YAML.load(File.open(env_file)).each do |key, value|
          ENV[key.to_s] = value
          end if File.exists?(env_file)
        end
```
