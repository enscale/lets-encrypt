To ensure successfull installation of Let's Encrypt, we automatically covered your environmnet name in the SSL certificate. You can edit the list of domains covered by the Let's Encrypt SSL with the **Edit** button. Please keep in mind that in order for the SSL to be issued, all domains you want to include in the SSL must point to the public IP address of your Enscale environment.

Your Let’s Encrypt SSL certificate will remain valid for 90 days from issuing. The system will automatically request the certificate renewal 30 days prior to the expiry date. If the renewal fails, you will start receiving expiry notifications to allow you to manually renew the certificate.  

You can also use the **Renew Now** button from Manage SSL to renew the SSL at any time.  
${response.response.skippedDomains}

Useful links:
* [How to work with Let's Encrypt](https://www.enscale.com/docs/features/ssl-certificates#lets-encrypt-ssl-certificate)
* [How to bind custom domain](https://www.enscale.com/docs/features/add-domain-name)
