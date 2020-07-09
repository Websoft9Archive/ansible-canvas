# Parameters

The Canvas deployment package contains a sequence software (referred to as "components") required for Canvas to run. The important information such as the component name, installation directory path, configuration file path, port, version, etc. are listed below.

## Path

### Canvas

Canvas installation directory:  */data/wwwroot/canvas*  
Canvas logs directory:   */data/wwwroot/canvas/log*  
Canvas configuration directory:   */data/wwwroot/canvas/config*  

### Apache

Apache vhost configuration file:*/etc/httpd/conf.d/vhost.conf*  
Apache main configuration file: */etc/httpd/conf/httpd.conf*  
Apache logs file: */var/log/httpd*

### Passenger

Passenger installation directory: */usr/lib/ruby/vendor_ruby/phusion_passenger*  
Passenger configuration file: */etc/apache2/mods-enabled/passenger.conf*

### Node.js

Node.JS modules directory: */usr/lib/node_modules*  
Node.js application directory: */data/wwwroot*  
Node.JS log file: */root/.pm2/pm2.log*

### Ruby

Ruby installation directory: */usr/lib/ruby*  

### PostgreSQL

PostgreSQL configuration file: */data/postgresql/config*  
PostgreSQL data directory: */data/postgresql/pgdata*  
PostgreSQL logs directory: */data/postgresql/log

## Ports

You can control(open or shut down) ports by **[Security Group Setting](https://support.websoft9.com/docs/faq/zh/tech-instance.html)** of your Cloud Server whether the port can be accessed from Internet.

You can run the cmd `netstat -tunlp` to list all used ports, and we list the following most useful ports:

| Name | Number | Use |  Necessity |
| --- | --- | --- | --- |
| TCP | 80 | HTTP  to visit Canvas | Optional |
| TCP | 443 | HTTPS to visit Canvas  | Optional |
| TCP | 9090 | PostgreSQL web GUI tool | Optional |
| TCP | 5432 | PostgreSQL server | Optional |

## Version

You can see the version from product page of Marketplace. However, after being deployed to your server, the components will be automatically updated, resulting in a certain change in the version number. Therefore, the exact version number should be viewed by running the command on the server:

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