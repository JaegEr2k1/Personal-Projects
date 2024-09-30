# Docker Lab 1: Build custom docker images for nginx, tomcat, NodeJS 

Task 1: Build nginx image 
- Write Dockerfile to build a nginx image from ubuntu/centos/redhat/oraclelinux/alpine base image 
- Create a html file on your local machine and copy to your image 
- Push image to your repository 
- Run nginx container from your image 
- Test curl from your localhost 

Task 2: Build tomcat image 
- Write Dockerfile to build a tomcat image from ubuntu/centos/redhat/oraclelinux/alpine base image 
- Push image to your repository 
- Run tomcat container from your image 
- Test curl from your localhost 
Task 3: Build NodeJS image 
- Write Dockerfile to build a NodeJS image from ubuntu/centos/redhat/oraclelinux/alpine base image 
- Push image to your repository 
- Run NodeJS container from your image 
- Test curl from your localhost 
 
# Docker Lab 2: Use docker-compose to deploy a mini full-stack web app 

Task 1: Install docker-compose 
- Install docker-compose following this reference: https://docs.docker.com/compose/install/ 
- Test the installation 
- Run command docker-compose version to check version of docker-compose 
- Run command docker-compose –help to see the cli references 

Task 2: docker-compose quick start 
- Using Docker Compose to easily run WordPress in an isolated environment built with Docker containers 
- References: https://docs.docker.com/samples/wordpress/ 

Task 3: Doing a real project including NodeJS and MySQL using docker-compose 
- Create Dockerfile for building NodeJS and MySQL container image 
- Create docker-compose file to running NodeJS and mysql service, connect to MySQL service from NodeJS service 
- Display web page on your browser 
 
# Docker Lab 3: Experiment Volume mount and bind mount

Task 1: Experiment Volume mount 
- Create a volume named task1-volume 
- Run a nginx container with the volume created in step 1 
- The mount point for container in /opt/mount_point/ 
- Use docker exec command to log into container, create a file with random content in /opt/mount_point/ 
- Run a second nginx container with the same mounting point as the first nginx container 
- Use docker exec command to log into the second nginx container, check if the file created before is in /opt/mount_point/ 

Task 2: Experiment Bind mount 
- Create an index.html file with the content you preferred 
- Run a nginx container map to port 80:80 
- Using bind mount to mount a location of your index.html file to /usr/share/nginx/html in the container 
- Check if the web content is the content of your html file. 
- Try modifying the content of index.html file in the container, check if the content of index.html file in your host also change 
