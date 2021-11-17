# Let’s Encrypt Add-On for Automated SSL Certificates Configuration

**[Let’s Encrypt](https://letsencrypt.org/)** is a free and open Certificate Authority, that simplifies and automates processes of browser-trusted SSL certificates issuing and appliance. Using this package you can automatically install Let’s Encrypt as an add-on to your environment.

<p align="center"> 
<img src="https://github.com/enscale/lets-encrypt/blob/master/images/letsencrypt-jelastic-ssl.png" width="400">
</p>

The installation can be performed on one of the following Enscale containers as an entry point:
* Load Balancers - _NGINX_
* Ruby application servers - _Enscale NGINX Ruby_

If you require Let’s Encrypt SSL for any other stack, just add a load balancer in front of your application servers and install the add-on. SSL termination at load balancing level is used by default in clustered topologies.

The Let’s Encrypt add-on allows to configure SSL for:
* **_internal environment address_**, which is composed of environment name and platform domain, to be served with a dummy (i.e. not commonly trusted) SSL certificate; this option can be used for testing purposes
* **_external domain(s)_**, each of which should be preliminarily bound to external IP of the corresponding node - either master application server instance or load balancer - via `A Record` or `CNAME`; provides trusted SSL certificates for production applications

To get deeper insights on how the Let’s Encrypt service works, refer to the [official documentation](https://letsencrypt.org/how-it-works/).
