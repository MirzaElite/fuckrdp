# use a base image that support systemd, for example, Ubuntu
FROM ubuntu:20.04

#install necessary pakages
RUN apt-get update && 
apt-get install -y shellinabox && \
apt-get install -y systemd && \
apt-get clean && \ 
rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
RUN echo 'root:root' | chpasswd
EXPOSE 4200

CMD ["/usr/bin/shellinaboxd",, "-t", "-s", "/:"]
