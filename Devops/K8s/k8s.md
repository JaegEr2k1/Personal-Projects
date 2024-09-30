# Lab:  Create a Kubernetes cluster with following requirements: 
1. Deploy 3 pods to run Front-End services (ReactJS, VueJS, Angular, etc.). 

<img src="./images/25. React file.png" alt="On host IP address 192.168.1.20" width="600"/>
<img src="./images/26. React deploy.png" alt="On host IP address 192.168.1.20" width="600"/>
<img src="./images/27. React service.png" alt="On host IP address 192.168.1.20" width="600"/>

2. Deploy 3 pods to run Back-End services (C#, Java, Golang, Python, etc.). 

<img src="./images/28. Net file.png" alt="On host IP address 192.168.1.20" width="600"/>
<img src="./images/29. Net deploy.png" alt="On host IP address 192.168.1.20" width="600"/>
<img src="./images/30. Net service.png" alt="On host IP address 192.168.1.20" width="600"/>

3. The images for Front-End and Back-End must be built from Dockerfile and pushed to Dockerhub (default images from the Docker registry should not be used) 

<img src="./images/31. Push.png" alt="On host IP address 192.168.1.20" width="600"/>

4. The pods should auto-scale based on CPU usage. 

<img src="./images/32. React scale.png" alt="On host IP address 192.168.1.20" width="600"/>
<img src="./images/33. Net scale.png" alt="On host IP address 192.168.1.20" width="600"/>
<img src="./images/34. Result.png" alt="On host IP address 192.168.1.20" width="600"/>

5. Deploy a database (MySQL, MongoDB, etc.) with the option to implement a High Availability (HA) model using Helm or StatefulSet (bonus points will be awarded). 

<img src="./images/35. Sql deploy.png" alt="On host IP address 192.168.1.20" width="600"/>
<img src="./images/36. Statefulset.png" alt="On host IP address 192.168.1.20" width="600"/>

6. Store relevant credential settings in Secrets. 

<img src="./images/41. Secret.png" alt="On host IP address 192.168.1.20" width="600"/>
<img src="./images/42. Secret SQL.png" alt="On host IP address 192.168.1.20" width="600"/>

7. Use DaemonSet to deploy ElasticSearch (using the fluentd-elasticsearch image) or complete EFK stack or any kind of logging and monitoring stacks. 

<img src="./images/43. Daemonset.png" alt="On host IP address 192.168.1.20" width="600"/>
<img src="./images/44. Logging.png" alt="On host IP address 192.168.1.20" width="600"/>

8. Use NodePort or LoadBalancer service type to allow access to the Front-End service from local

<img src="./images/47. Expose app.png" alt="On host IP address 192.168.1.20" width="600"/>