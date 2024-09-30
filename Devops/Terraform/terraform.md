I. AWS IAM 
* Set up account:

 <img src="./images/1.png" alt="On host IP address 192.168.1.20" width="600"/>

* Set up MFA for your account 

<img src="./images/2.png" alt="On host IP address 192.168.1.20" width="600"/>
 
* Navigate through AWS Console on web to get use to the UI 
 
<img src="./images/3.png" alt="On host IP address 192.168.1.20" width="600"/>

* Try to create a user, create it with a prefix fadevops81<yourshortname> 

<img src="./images/4.png" alt="On host IP address 192.168.1.20" width="600"/>
 
* Login into that account, try to play with editing policy permission for that user to be able/unable to view EC2 instances. 

<img src="./images/5.png" alt="On host IP address 192.168.1.20" width="600"/>
 
* Create a group with a prefix fadevops@lgr<yourshortname> 
 
<img src="./images/6.png" alt="On host IP address 192.168.1.20" width="600"/> 
<img src="./images/7.png" alt="On host IP address 192.168.1.20" width="600"/>

* Add the user fadevops@1<yourshortname> to the group. And try adding permission to this group 
 
<img src="./images/8.png" alt="On host IP address 192.168.1.20" width="600"/>

* Remove the user, group, policy you created. 
* Setting up aws cli on your local machine 

<img src="./images/9.png" alt="On host IP address 192.168.1.20" width="600"/>
 
* On your main AWS account, create Security Credentials and use that to finish setting up the aws cli. Verify the authentication by running some commands. 

<img src="./images/10.png" alt="On host IP address 192.168.1.20" width="600"/>
 
* Use Terraform with the security credential you created on step 9 to set up a EC2 instance of type t2.micro on region Singapore (ap-southeast-1) 
 
<img src="./images/11.png" alt="On host IP address 192.168.1.20" width="600"/> 
<img src="./images/12.png" alt="On host IP address 192.168.1.20" width="600"/>
<img src="./images/13.png" alt="On host IP address 192.168.1.20" width="600"/>

* On the EC2 instance, install the aws cli (But do not attach any secret credential to it) 

<img src="./images/14.png" alt="On host IP address 192.168.1.20" width="600"/>
 
* Create a service role for EC2 that allow to list all s3 buckets 

<img src="./images/15.png" alt="On host IP address 192.168.1.20" width="600"/>
 
* Attach that role to EC2 and verify that the EC2 able to use the role by using aws cli command to list s3 bucket 
 
 <img src="./images/16.png" alt="On host IP address 192.168.1.20" width="600"/>

