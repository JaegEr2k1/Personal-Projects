# Ubuntu 22.04 base image
FROM ubuntu:22.04

# Set environment variables to non-interactive (prevents prompts during build)
ENV DEBIAN_FRONTEND=noninteractive

# Update package list and install prerequisites
RUN apt-get update && \
    apt-get install -y \
    curl \
    gnupg \
    build-essential

# Add Node.js repository and install Node.js
RUN curl -fsSL https://deb.nodesource.com/setup_18.x | bash - && \
    apt-get install -y nodejs

# Create and set the working directory
WORKDIR /usr/src/app

# Copy package.json and package-lock.json (if available)
COPY package*.json ./

# Verify that the package.json file has been copied
RUN ls -la /usr/src/app

# Install application dependencies
RUN npm install

# Copy the rest of the application code
COPY . .

# Expose the port that your application will run on
EXPOSE 3000

# Define the command to run your application
CMD ["node", "index.js"]
