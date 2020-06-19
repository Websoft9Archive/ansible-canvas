# Start or Stop the Services

These commands you must know when you using the Canvas of Websoft9

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
