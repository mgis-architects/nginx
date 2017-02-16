FROM centos
MAINTAINER adubnik@gmail.com
ARG NGINX_VERSION=1.10.3
RUN yum -y install http://dl.fedoraproject.org/pub/epel/7/x86_64/e/epel-release-7-9.noarch.rpm && yum -y update && yum -y install ansible 
ADD ansible-nginx  /source/ansible-nginx
WORKDIR /source/ansible-nginx
RUN ansible-playbook install-nginx.yml  --extra-vars "nginx_version=${NGINX_VERSION}"
ENTRYPOINT ["/usr/bin/nginx"]
CMD ["-g", "daemon off;"]

# HTTPS & HTTP Ports
EXPOSE 443 80

HEALTHCHECK --interval=5m --timeout=3s \
  CMD curl -f http://localhost/ || exit 1

# NGiNX Logs 
VOLUME /usr/local/nginx/logs

# ModSecurity Logs
VOLUME /opt/modsecurity/var/logs
VOLUME /opt/modsecurity/var/audit