# nginx

Package contains Ansible scripts to run docker container with NGINX (TBD)

It also contain Dockerfile and relevant scripts to build container with NGINX and ModSecurity. 

To execute the docker build navigate to nginx-waf-docker & run 
docker build -t nginx_lbr:v1 -f DockerfileNGINX .

Docker build will have files in following locations:

Configruation: /usr/local/nginx/conf/
OWASP-ModSecurity: /usr/local/nginx/conf/rules/
ModSecurity Audith location: /opt/modsecurity/var/audit

