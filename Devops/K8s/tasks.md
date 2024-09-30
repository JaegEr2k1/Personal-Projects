# Kubernetes Lab:  Create a Kubernetes cluster with following requirements: 
1. Deploy 3 pods to run Front-End services (ReactJS, VueJS, Angular, etc.). 
2. Deploy 3 pods to run Back-End services (C#, Java, Golang, Python, etc.). 
3. The images for Front-End and Back-End must be built from Dockerfile and pushed to Dockerhub (default images from the Docker registry should not be used) 
4. The pods should auto-scale based on CPU usage. 
5. Deploy a database (MySQL, MongoDB, etc.) with the option to implement a High Availability (HA) model using Helm or StatefulSet (bonus points will be awarded). 
6. Store relevant credential settings in Secrets. 
7. Use DaemonSet to deploy ElasticSearch (using the fluentd-elasticsearch image) or complete EFK stack or any kind of logging and monitoring stacks. 
8. Use NodePort or LoadBalancer service type to allow access to the Front-End service from local
