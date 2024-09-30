# Ansible - Installing web service on a remote server 
Using Ansible to install web service on a remote server. 
1. Web Service can be one of these: Apache2, nginx 
2. Separate components into files (e.g: "inventory" for list of remote servers, "playbook.yaml" is for the steps to install, …) 

--------------------------------------------------------------------------------------------------------------------

* Install Ansible on Control Node (Ansible Server):
 
<img src="./images/1.png" alt="On host IP address 192.168.1.20" width="600"/>
<img src="./images/2.png" alt="On host IP address 192.168.1.20" width="600"/>
 
* Check SSH connection between Ansible server and Remote server (Managed host)

<img src="./images/3.png" alt="On host IP address 192.168.1.20" width="600"/>
 
* Create a SSH keygen on Ansible server

<img src="./images/4.png" alt="On host IP address 192.168.1.20" width="600"/>
<img src="./images/5.png" alt="On host IP address 192.168.1.20" width="600"/>
 
* Copy public key to Managed host:
 
<img src="./images/6.png" alt="On host IP address 192.168.1.20" width="600"/>
<img src="./images/7.png" alt="On host IP address 192.168.1.20" width="600"/>

* Using Ansible to install web service Nginx on a remote server:
-	Edit inventory file:
 
<img src="./images/8.png" alt="On host IP address 192.168.1.20" width="600"/>
<img src="./images/9.png" alt="On host IP address 192.168.1.20" width="600"/>

-	Create an yaml file to install Nginx on managed host:
 
<img src="./images/10.png" alt="On host IP address 192.168.1.20" width="600"/>
<img src="./images/11.png" alt="On host IP address 192.168.1.20" width="600"/>
 
- Run the playbook: > ansible-playbook -i [playbook location] [playbook]
 
<img src="./images/12.png" alt="On host IP address 192.168.1.20" width="600"/> 

- Check webserver on Managed host:
 
<img src="./images/13.png" alt="On host IP address 192.168.1.20" width="600"/> 

- Check on browser:

<img src="./images/14.png" alt="On host IP address 192.168.1.20" width="600"/>