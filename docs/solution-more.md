# More

Each of the following solutions has been proven to be effective and we hope to be helpful to you.

## Domain binding

The precondition for binding a domain is that Canvas can accessed by domain name.

Nonetheless, from the perspective of server security and subsequent maintenance considerations, the **Domain Binding** step cannot be omitted.

Canvas domain name binding steps:

1. Connect your Cloud Server
2. Modify [Apache vhost configuration file](/stack-components.md#apache), change the **server_name**'s value to your domain name
   ```text
   <VirtualHost *:80>
   ServerName canvas.example.com
   ...
   </VirtualHost>
   }
   ```
3. Restart Apache service

## Init Canvas

You may init Canvas if you can't recover your administrator password by email

Use SSH to connect Server, run the follow sample commands, you can recover your account and password to: `help@websoft9.com/websoft9`

```
export RAILS_ENV=production
export CANVAS_LMS_ADMIN_EMAIL=help@websoft9.com
export CANVAS_LMS_ADMIN_PASSWORD=websoft9
export CANVAS_LMS_ACCOUNT_NAME=admin
export CANVAS_LMS_STATS_COLLECTION=opt_in
cd /data/wwwroot/canvas; bundle exec rake db:initial_setup
```

> Init Canvas will delete all your history data in your database