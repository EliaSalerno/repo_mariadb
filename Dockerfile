  
# Use the alpine base image
FROM alpine
 
# Set environment variables for configuration
ENV MYSQL_ROOT_PASSWORD=root
ENV MYSQL_DATABASE=mydb
ENV MYSQL_USER=myuser
ENV MYSQL_PASSWORD=myuser
 
# Install mariadb
RUN apk update && apk upgrade
RUN apk add mariadb mariadb-client
 
# Copy the mariadb configuration file
# COPY my.cnf /etc/mysql/my.cnf
 
# Expose the default port for mariadb
EXPOSE 3306
 
# Set the entrypoint command to start mariadb
ENTRYPOINT ["mysqld"]
 
# Add labels for better maintainability
LABEL maintainer="Your Name <elia.salerno@issgreppi.it>"
LABEL version="1.0"
LABEL description="Dockerfile for mariadb built from scratch with alpine"
