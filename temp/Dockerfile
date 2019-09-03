FROM wordpress

# Install requirements for wp-cli support
# RUN apt-get update \
#   && apt-get install -y sudo less mysql-client \
#   && rm -rf /var/lib/apt/lists/*

# Add WP-CLI 
RUN curl -O https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar && \
    chmod +x wp-cli.phar && \
    mv wp-cli.phar /usr/local/bin/wp




# COPY wp-su.sh /bin/wp
# RUN chmod +x /bin/wp-cli.phar

# RUN yum update -y \
#   && yum clean all

#USER www-data

COPY wp_install.sh ./
#RUN ./wp_install.sh

COPY run.sh ./

# Sleep for 2 days to allow debuging of the container
#CMD ["sleep", "2d"]
