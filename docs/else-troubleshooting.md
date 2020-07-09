# Troubleshooting

We collect the most common troubleshooting of using Canvas for your reference:

> Instance troubleshooting is closely related to the Instance provider that is Cloud Platform, refer to [Cloud Platform Documentation](https://support.websoft9.com/docs/faq/tech-instance.html)

#### How can I use the logs?

You can find the keywords **Failed** or **error** from the these logs

* Canvas log: */data/wwwroot/canvas/log/production.log*
* Apache log: */data/logs/apache*

#### Canvas service can't start?

Insufficient disk space, insufficient memory, and configuration file errors can make service could not be started  

It is recommended to first check through the command.

```shell
# restart Canvas service
systemctl status apache
journalctl -u apache

# view disk space
df -lh

# view memory rate
free -lh
```

#### 403 error?

You should make sure user **canvas** and **www-data** haver permission of DIR */data/wwwroot/canvas*
