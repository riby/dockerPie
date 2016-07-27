# Set the base image to Ubuntu
FROM ubuntu

# File Author / Maintainer
MAINTAINER Riby

# Update the repository sources list
RUN apt-get update
RUN apt-get install -y python

# Add src.
COPY src/ /var/www

WORKDIR /var/www
CMD python -m SimpleHTTPServer 80

# Expose the default port
EXPOSE 80
