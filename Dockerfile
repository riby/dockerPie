# Set the base image to Ubuntu
FROM ubuntu


# Update the repository sources list
RUN apt-get update
RUN apt-get install -y python

# Add src.
COPY src/ /dockerProject

WORKDIR /dockerProject
CMD python -m SimpleHTTPServer 80

# Expose the default port
EXPOSE 80
