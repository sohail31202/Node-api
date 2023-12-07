# Use the official MariaDB image as the base image
FROM mariadb:latest

# Environment variables for MariaDB configuration
ENV MYSQL_ROOT_PASSWORD root
ENV MYSQL_DATABASE users
ENV MYSQL_USER myuser
ENV MYSQL_PASSWORD root

# Copy the SQL script for initializing the database
COPY init.sql /docker-entrypoint-initdb.d/
