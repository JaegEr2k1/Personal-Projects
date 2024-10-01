- Run command: terraform apply --var-file "lab.tfvars"
<img src="./images/1.png" alt="On host IP address 192.168.1.20" width="600"/>

1. Create a module network with these requirement:
    - Input variable to the module: VPC CIDR
    - Resource created by the module:
        + VPC
        + 1 internet gateway
        + 1 nat gateway
        + 2 public subnets with thier route tables
        + 2 private subnets with thier route tables

    <img src="./images/2.png" alt="On host IP address 192.168.1.20" width="600"/>

2. Create 2 instance: 1 in public subnet and 1 in private that created in task 1
    - t3.micro 

    <img src="./images/3.png" alt="On host IP address 192.168.1.20" width="600"/>
    <img src="./images/4.png" alt="On host IP address 192.168.1.20" width="600"/>
    <img src="./images/5.png" alt="On host IP address 192.168.1.20" width="600"/>

    - User-data script for setting NGINX in public instance 
    - Configure the public instance network correctly so we can view from the internet

    <img src="./images/6.png" alt="On host IP address 192.168.1.20" width="600"/>

3. Create a service role for EC2 that allow to list all s3 buckets. Attach that role to EC2 instance (create in task 2) and verify that the instance able to use the list s3 bucket role 

<img src="./images/7.png" alt="On host IP address 192.168.1.20" width="600"/>
<img src="./images/8.png" alt="On host IP address 192.168.1.20" width="600"/>

4. Create an Application Load Balancer and an Auto-scaling Group

<img src="./images/9.png" alt="On host IP address 192.168.1.20" width="600"/>
<img src="./images/10.png" alt="On host IP address 192.168.1.20" width="600"/>
<img src="./images/11.png" alt="On host IP address 192.168.1.20" width="600"/>

    - Test ASG: Delete one instance to see the ASG scale up

<img src="./images/12.png" alt="On host IP address 192.168.1.20" width="600"/>

    - Test ALB: Use ALB dns to access the Nginx service

<img src="./images/13.png" alt="On host IP address 192.168.1.20" width="600"/>

5. Setup an S3 bucket and host static web app using this bucket 

<img src="./images/14.png" alt="On host IP address 192.168.1.20" width="600"/>
<img src="./images/15.png" alt="On host IP address 192.168.1.20" width="600"/>