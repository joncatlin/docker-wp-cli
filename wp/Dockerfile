FROM wordpress:cli-2.3.0-php7.3

# RUN yum update -y \
#   && yum clean all

# See 'Running as an arbitary user' in https://hub.docker.com/_/wordpress/
USER 33:33

WORKDIR /tmp

COPY wp_install.sh ./
RUN ./wp_install.sh

COPY run.sh ./

# Sleep for 2 days to allow debuging of the container
CMD ["sleep", "2d"]
