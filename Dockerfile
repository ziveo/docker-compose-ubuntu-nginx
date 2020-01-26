FROM ubuntu:16.04

# Install required system packages
RUN apt-get -q -y update \
    && apt-get -q -y install \
        vim \
        wget \
        nginx \
        htop

EXPOSE 80

CMD ["nginx", "-g", "daemon off;"]
