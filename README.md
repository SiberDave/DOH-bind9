
# DOH-bind9

bind9 dns server with dns-over-https using nginx as tls offloader. 


## Installation

* Make sure to install docker and docker compose first

* Create self-signed ssl for the Dns-over-https
```bash
  chmod +x Config/Nginx/self-sign.sh
  Config/Nginx/self-sign.sh <your private ip or domain>
```
* Change the section on Config/Nginx/nginx.conf for the ssl to ssl that you have created.
```bash
ssl_certificate path/to/cert.pem;
ssl_certificate_key path/to/key.pem;
``` 
* Run the docker compose file 
```bash
  docker compose -p "alpine-bind9-doh" up -d
```
## Documentation

[Bind9 DOH Setup Reference](https://www.isc.org/blogs/bind-implements-doh-2021)

