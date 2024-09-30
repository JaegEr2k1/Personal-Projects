# Docker Lab 1: Build custom docker images for nginx, tomcat, NodeJS 
Task 1: Build nginx image 
1. Write Dockerfile to build a nginx image from ubuntu/centos/redhat/oraclelinux/alpine base image 

<img src="./images/17.1. Write dockerfile.png" alt="On host IP address 192.168.1.20" width="600"/>

<img src="./images/17.2. Custom-ngix.png" alt="On host IP address 192.168.1.20" width="600"/>

2. Create a html file on your local machine and copy to your image 

<img src="./images/18.1. Html file.png" alt="On host IP address 192.168.1.20" width="600"/>

<img src="./images/18.2. Copy html.png" alt="On host IP address 192.168.1.20" width="600"/>

3. Push image to your repository 

<img src="./images/19.1. Push image.png" alt="On host IP address 192.168.1.20" width="600"/>

<img src="./images/19.2. Docker repo.png" alt="On host IP address 192.168.1.20" width="600"/>

4. Run nginx container from your image 

<img src="./images/20. Run container.png" alt="On host IP address 192.168.1.20" width="600"/>

5. Test curl from your localhost 

<img src="./images/21. Nginx curl.png" alt="On host IP address 192.168.1.20" width="600"/>

Task 2: Build tomcat image 
1. Write Dockerfile to build a tomcat image from ubuntu/centos/redhat/oraclelinux/alpine base image 

<img src="./images/22.1. Dockerfile.png" alt="On host IP address 192.168.1.20" width="600"/>

<img src="./images/22.2. Docker build.png" alt="On host IP address 192.168.1.20" width="600"/>

2. Push image to your repository 

<img src="./images/23.1. Docker push.png" alt="On host IP address 192.168.1.20" width="600"/>

<img src="./images/23.2. Docker push.png" alt="On host IP address 192.168.1.20" width="600"/>

3. Run tomcat container from your image 

<img src="./images/24. Tomcat run.png" alt="On host IP address 192.168.1.20" width="600"/>

4. Test curl from your localhost 

<img src="./images/25. Tomcat curl.png" alt="On host IP address 192.168.1.20" width="600"/>

Task 3: Build NodeJS image 
1. Write Dockerfile to build a NodeJS image from ubuntu/centos/redhat/oraclelinux/alpine base image 

<img src="./images/26.1. Nodejs file.png" alt="On host IP address 192.168.1.20" width="600"/>

<img src="./images/26.2. Nodejs build.png" alt="On host IP address 192.168.1.20" width="600"/>

2. Push image to your repository 

<img src="./images/27.1. Docker push.png" alt="On host IP address 192.168.1.20" width="600"/>

<img src="./images/27.2. Docker push.png" alt="On host IP address 192.168.1.20" width="600"/>

3. Run NodeJS container from your image 

<img src="./images/28. Nodejs run.png" alt="On host IP address 192.168.1.20" width="600"/>

4. Test curl from your localhost 

<img src="./images/29. Nodejs curl.png" alt="On host IP address 192.168.1.20" width="600"/>

# Docker Lab 2: Use docker-compose to deploy a mini full-stack web app 
Task 1: Install docker-compose 

1. Install docker-compose following this reference: https://docs.docker.com/compose/install/ 

<img src="./images/30. Compose install.png" alt="On host IP address 192.168.1.20" width="600"/>

2. Test the installation by check version of docker-compose and docker-compose –help

<img src="./images/31. Compose version.png" alt="On host IP address 192.168.1.20" width="600"/>


Task 2: Docker-compose quick start 
1. Using Docker Compose to easily run WordPress in an isolated environment built with Docker containers 
References: https://docs.docker.com/samples/wordpress/

<img src="./images/32.1. Compose yml.png" alt="On host IP address 192.168.1.20" width="600"/>

<img src="./images/32.2. Compose run.png" alt="On host IP address 192.168.1.20" width="600"/>

<img src="./images/32.3. Compose test.png" alt="On host IP address 192.168.1.20" width="600"/>

Task 3: Doing a real project including NodeJS and MySQL using docker-compose 
1. Create Dockerfile for building NodeJS and MySQL container image 

<img src="./images/33. Dockerfile.png" alt="On host IP address 192.168.1.20" width="600"/>

2. Create docker-compose file to running NodeJS and mysql service, connect to MySQL service from NodeJS service

<img src="./images/34. Compose yml.png" alt="On host IP address 192.168.1.20" width="600"/>

3. Display web page on your browser 

<img src="./images/35.1. Run.png" alt="On host IP address 192.168.1.20" width="600"/>

<img src="./images/35.2. Run.png" alt="On host IP address 192.168.1.20" width="600"/>

<img src="./images/35.3. Test.png" alt="On host IP address 192.168.1.20" width="600"/>

# Docker Lab 3: Experiment Volume mount & experiment bind mount

Task 1: Experiment Volume mount 
1. Create a volume named task1-volume 

<img src="./images/36. Create volume.png" alt="On host IP address 192.168.1.20" width="600"/>

2. Run a nginx container with the volume created and with the mount point for container in /opt/mount_point/

<img src="./images/37. Change mount point.png" alt="On host IP address 192.168.1.20" width="600"/>

4. Use docker exec command to log into container, create a file with random content in /opt/mount_point/ 

<img src="./images/38. Random file.png" alt="On host IP address 192.168.1.20" width="600"/>

5. Run a second nginx container with the same mounting point as the first nginx container then log into the second nginx container and check if the file created before is, in /opt/mount_point/ 

<img src="./images/39. Test.png" alt="On host IP address 192.168.1.20" width="600"/>

Task 2: Experiment Bind mount 
1. Create an index.html file with the content you preferred 

<img src="./images/40. Index html.png" alt="On host IP address 192.168.1.20" width="600"/>

2. Run a nginx container map to port 80:80 and using bind mount to mount a location of your index.html file to /usr/share/nginx/html in the container 

<img src="./images/41. Create container.png" alt="On host IP address 192.168.1.20" width="600"/>

4. Check if the web content is the content of your html file. 

<img src="./images/42. Test.png" alt="On host IP address 192.168.1.20" width="600"/>

5. Try modifying the content of index.html file in the container, check if the content of index.html file in your host also change 

<img src="./images/43.1. Change index html.png" alt="On host IP address 192.168.1.20" width="600"/>
<img src="./images/43.2. Test.png" alt="On host IP address 192.168.1.20" width="600"/>