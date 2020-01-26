# docker run --name ubuntu_ckan_test -it ubuntu_ckan:1.0 bash
# docker image build -t ubuntu_ckan:1.0 .
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
