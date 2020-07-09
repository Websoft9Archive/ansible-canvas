# FAQ

#### Can Canvas open source support mobile?

Yes, refer to: [mobile-guide](https://community.canvaslms.com/community/answers/guides/mobile-guide)

#### Canvas multi-languages?

Yes

#### Can I reset administrator password of Canvas by command?

No


#### Canvas hosted offering vs OpenSource?

Refer to: [code differences between the open source and hosted offerings](https://github.com/instructure/canvas-lms/wiki/FAQ#does-canvas-support-any-extensions)

#### If there is no domain name, can I deploy Canvas?

Yes, visit Canvas by *http://Internet IP:8161*

#### What is the password for the database root user?

The password is stored in the server related file: `/credentials/password.txt`

#### Is there a web-base GUI database management tools?

Yes, phpPgAdmin is on it, visit by *http://Internet IP:9090*

#### Is it possible to modify the source path of Canvas?

Yes, you need to modify the Apache vhost configuration file at the same time

#### How to change the permissions of filesytem?

Change owner(group) or permissions like below:

```shell
chown -R canvas.canvas /data/wwwroot/canvas
find /data/wwwroot/canvas -type d -exec chmod 750 {} \;
find /data/wwwroot/canvas -type f -exec chmod 640 {} \;
```

#### What's the difference between Deployment and Installation?

- Deployment is a process of installing and configuring a sequence of software in sequence in a different order, which is a complex system engineering.  
- Installation is the process of starting the initial wizard after the application is prepared.  
- Installation is simpler than deployment. 

#### What's Cloud Platform?

Cloud platform refers to platform manufacturers that provide cloud computing services, such as: **Azure, AWS, Alibaba Cloud, HUAWEI CLOUD, Tencent Cloud**, etc.

#### What is the difference between Instance, Cloud Server, Virtual Machine, ECS, EC2, CVM, and VM?

No difference, just the terminology used by different manufacturers, actually cloud servers