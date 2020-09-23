## Canvas 

Canvas 是一个开源LMS系统。

## 安装方式
按照官方的说明，我们采取编译安装的方式

### 注意点

1.依赖 Apache HTTP Server 和 Passenger 应用服务器

2. 安装的时候需要最少两个 PostgreSQL 用户，一个是 *canvas*， 另外一个是当前操作系统用户，例如 *root*

3. 初始化 `bundle exec rake db:initial_setup` 依赖于环境变量

4. production and development 版本安装方式不同，前者更为复杂

5. canvas用户的密码初期设置需要8位，默认为12345678，否则安装报错
```
RAILS_ENV=production bundle exec rake db:initial_setup
```

6. canvas密码随机的时候，通过systemed启动init服务，无法改变ruby里面的环境变量，我们采取
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
7.canvas对内存要求较高，否则开机后无法运行初始页面；建议最低2核8g，推荐4核心16g以上。
