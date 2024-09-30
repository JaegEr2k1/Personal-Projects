# Use the official Ubuntu 22.04 as the base image
FROM ubuntu:22.04
# Update the package list and install Nginx
RUN apt-get update && apt-get install -y nginx
# Copy your index.html to the Nginx default HTML directory
COPY index.html /var/www/html/ 
# Expose port 80
EXPOSE 80
# Run Nginx in the foreground
CMD ["nginx", "-g", "daemon off;"]

