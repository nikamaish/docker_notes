#*** Running ubuntu image in container ***

FROM ubuntu:latest

#docker run -it ubuntu
#this command help to create container which have ubuntu operating system in it
#hub.docker.com help to create container, and this is like github, it has all public container if you already have ubuntu img then it reuses



#*** Understanding imgaes vs containers ***

#This container have particular id and it is isolated, imgs are operating systems, container needs imgs i.e os
#img act as os and containers helps to run imgs  
#containers cannot communicate with each other they are isolated, until and unless our wish

#ctrl + d = stop container

#we can make custom imgs,  that will have their own dependencies
#these imgs can deploy on public platforms so any one can run this img in their local containers

#docker container ls
#it gives list of container which are running, this command works when your containers are running

#docker container ls -a 
#it gives list of all containers which are stooped and which are working

#docker start container name = to start 

#docker start container name = to start

#docker 
#how to go inside of container 
#docker exec -it container_name command

#-it = interactive tdy, it hepls to connect terminal to docker terminal so that you can perform commands in container

#for eg. 
#docker exec -it container_name bash

#to see the imgs we can do
#docker images
#docker images ls

#there are lots of imgs, we can explore that through docker.hub.com

#if you want to go inside of container, you need to start it then go inside of it

#we need to pull node 
#command = docker run -it node


#local machine have different node version and container have diff version



#*** Port Mapping ***

#MailHog:-
#MailHog is a tool used for email testing during development. In the context of Docker, MailHog can be run as a Docker container to capture and display emails sent by your application during testing or development. mailhog is img that can be used to send the mails

#docker run -d -p 1025:1025 -p 8025:8025 mailhog/mailhog


#within each container there will be a port and that port need to expose 

#mailhog will run on 1025 port 

#piyushgargdev/mynodeapp this is an img and need to pull
#docker run -it piyushgargdev/mynodeapp

#docker run -it -p 6000:9000 piyushgargdev/mynodeapp
#in above command  we are porting our localmachine port with container port

#6000 = local machine port
#we can change it


#9000 = container port


