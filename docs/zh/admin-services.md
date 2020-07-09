# 服务启停

使用由Websoft9提供的 Canvas 部署方案，可能需要用到的服务如下：

### Canvas 主程序

通过 Apache 服务启停来管理 Canvas

```shell
sudo systemctl start apache
sudo systemctl stop apache
sudo systemctl restart apache
sudo systemctl status apache
```

### Canvas Job

```shell
sudo systemctl start canvas-init
sudo systemctl stop canvas-init
sudo systemctl restart canvas-init
sudo systemctl status canvas-init
```

### PostgreSQL

```shell
sudo systemctl start postgresql
sudo systemctl stop postgresql
sudo systemctl restart postgresql
sudo systemctl status postgresql
```

### Redis

```shell
sudo systemctl start redis
sudo systemctl stop redis
sudo systemctl restart redis
sudo systemctl status redis
```

### Passenger

```
sudo passenger start
sudo passenger stop
sudo passenger status
```