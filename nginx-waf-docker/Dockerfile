FROM centos
MAINTAINER adubnik@gmail.com
ENV REVISION=16_02_2017_13_42
ARG NGINX_VERSION=1.10.3
ARG LOGGER_TYPE=dockerlog
ENV NGINX_VERSION ${NGINX_VERSION}
ENV LOGGER_TYPE ${LOGGER_TYPE}

# NGiNX Logs
VOLUME /usr/local/nginx/logs

# ModSecurity Logs
VOLUME /opt/modsecurity/var/logs
VOLUME /opt/modsecurity/var/audit

RUN yum -y install http://dl.fedoraproject.org/pub/epel/7/x86_64/e/epel-release-7-9.noarch.rpm && yum -y update && yum -y install ansible 
ADD ansible-nginx  /source/ansible-nginx
WORKDIR /source/ansible-nginx
RUN ansible-playbook install-nginx.yml  --extra-vars "nginx_version=${NGINX_VERSION} logger=${LOGGER_TYPE}"
ADD start.sh /usr/local/bin/
RUN chmod +x /usr/local/bin/start.sh
ENTRYPOINT ["/usr/local/bin/start.sh"]

# HTTPS & HTTP Ports
EXPOSE 443 80

HEALTHCHECK --interval=5m --timeout=3s \
  CMD curl -f http://localhost/ || exit 1
