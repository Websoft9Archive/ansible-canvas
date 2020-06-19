# 服务启停

使用由Websoft9提供的 Canvas 部署方案，可能需要用到的服务如下：

### Canvas

```shell
sudo systemctl start canvas-server
sudo systemctl stop canvas-server
sudo systemctl restart canvas-server
sudo systemctl status canvas-server

# you can use this debug mode if Canvas service can't run
canvas-server console
```

### MySQL

```shell
sudo systemctl start mysql
sudo systemctl stop mysql
sudo systemctl restart mysql
sudo systemctl status mysql
```

### Redis

```shell
systemctl start redis
systemctl stop redis
systemctl restart redis
systemctl status redis
```
