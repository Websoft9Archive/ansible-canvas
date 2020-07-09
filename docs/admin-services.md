# Start or Stop the Services

These commands you must know when you using the Canvas of Websoft9


### Canvas

Use Apache service to manage Canvas's stop | start | restart

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