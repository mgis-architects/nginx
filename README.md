# Nginx on Docker with WAF

Project Currently WIP and not finalized yet

# Overview

Package contains Ansible scripts to run docker container with NGINX (TBD)

It also contain Dockerfile and relevant scripts to build container with NGINX and ModSecurity. 

# Requirements

Docker 1.12+

Ansible 2.2.x+

Internet access from Docker Build Machine as sources will be pulled from different locations during the build.

# Create Docker Image

Install Docker 1.12 on the build machine

Navigate to the build location

cd [nginx-waf-docker](https://github.com/mgis-architects/nginx/tree/master/nginx-waf-docker)

Execute docker build

`docker build -t nginx_lbr:v1 -f DockerfileNGINX .`

## Docker build will have files in following locations:

**Configruation:** /usr/local/nginx/conf/

**OWASP-ModSecurity:** /usr/local/nginx/conf/rules/


