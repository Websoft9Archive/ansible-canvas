# Initial Installation

If you have completed the Canvas deployment on Cloud Platform, the following steps is for you to start use it quikly

## Preparation

1. Get the **Internet IP** on your Cloud Platform
2. Check you **[Inbound of Security Group Rule](https://support.websoft9.com/docs/faq/tech-instance.html)** of Cloud Console to ensure the **TCP:80** is allowed
3. Make a domain resolution on your DNS Console if you want to use domain for Canvas

## Canvas Installation Wizard

1. Using local Chrome or Firefox to visit the URL *http://DNS* or *http://Internet IP*, you can see login page
   ![canvas login page](https://libs.websoft9.com/Websoft9/DocsPicture/en/canvas/canvas-login-websoft9.png)

2. Log in to Canvas console([Don't have password?](/stack-accounts.md#canvas))  
   ![canvas console](https://libs.websoft9.com/Websoft9/DocsPicture/en/canvas/canvas-console001-websoft9.png)

3. Open:【Admin】>【Settings】>【Account Settings】to set your language
   ![canvas set language](https://libs.websoft9.com/Websoft9/DocsPicture/en/canvas/canvas-setlanguage-websoft9.png)

4. Open:【Account】>【Settings】>【Edit Settings】 to modify the default email and password
   ![canvas edit setting](https://libs.websoft9.com/Websoft9/DocsPicture/en/canvas/canvas-setaccount001-websoft9.png)
   ![canvas modify password](https://libs.websoft9.com/Websoft9/DocsPicture/en/canvas/canvas-setaccount002-websoft9.png)

> More useful Canvas guide, please refer to [Canvas Guides](https://community.canvaslms.com/community/answers/guides)

## Q&A

#### I can't visit the start page of Canvas?

Your TCP:80 of Security Group Rules is not allowed so there no response from Chrome or Firefox

#### Canvas very slowly?

Canvas need very high configuration of Server, minimal: 2 vCPU and 8G memory