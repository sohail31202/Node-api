# Node-api

you have a following files for your application deployment
file 1 :  server.js for your Node.js API
file 2 :  mariadb-deployment.yaml
file 3 :  nodejs-api-deployment.yaml
file 4 :  nodejs-api-service to use LoadBalancer type:
file 5 :  init.sql to create database,tables,fields,and dumb data into the mariadb
file 5 :  Dockerfile.nodejs
file 6 :  Dockerfile.mariadb
file 7 :  docker-compose.yml
file 8 :  index.html

commands sequence

1: Install kubernetes cluster aws/gcp/minikube etc

2: install docker

3: install the rwquired package:
    npm init -y
    npm install express mariadb
4 : run the Dockerfiles one by one in respective folders to create the images

5:  use the following commands for deployment
      kubectl apply -f mariadb-deployment.yaml   (mariadb folder)
      kubectl apply -f nodejs-api-deployment.yaml (nodejs folder)
       kubectl apply -f nodejs-api-service.yml  (nodejs folder)
6: Access MariaDB Pod with Port Forwarding
      kubectl port-forward <pod-name> 3306:3306
      kubectl exec -it <pod-name> -- /bin/bash  (locally)
7: to access the api
    npm install
    node server.js
8:  expose the respective all ports which mentioned in files 3306,3000,80 etc

9: Access the API:
    http://<your-ec2-public-ip>:3000/user
10: you can also user ther below command to access locally
    http-server

       



