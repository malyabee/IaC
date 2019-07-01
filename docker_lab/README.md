## IaaC project : docker_lab  
 A Vagrantfile to build a docker host on  virtual envirnment to learn docker concepts.  
 
1. Docker Host  (centos/7)
    The docker node configured with docker software and ready to host containers. 
    

### Steps :  
  Step 1 :  Install virtual box (https://www.virtualbox.org)

  Step 2 :  Install vagrant  (https://www.vagrantup.com)

  Step 3 :  Download and  Vagrant file  
       git clone https://github.com/malyabee/IaaC.git  

  Step 4  : starting virtual machines 

       $ cd IaaC/docker_lab
 
       $ vagrant up
       # "vagrant up" might take a while for first time

### commands to login docker virtual machines
     cd IaaC/docker_lab 

     vagrant ssh 
     
     
## Docker commands       
###  commands to verify docker version  and start docker daemon
      [vagrant@docker ~]$ docker version
       
       # starting docker daemon
       [vagrant@docker ~]$ sudo systemctl start docker
       
       
   
   
#### Docker rommands to run wordpress and mysql in a  container  
         [vagrant@docker ~]$ mkdir wordpress
         [vagrant@docker ~]$ cd wordpress
         [vagrant@docker wordpress]$ docker pull tutum/wordpress
         
         # To list out local docker images
         [vagrant@docker wordpress]$ docker image ls
         
         # To run an image and to create a container based on image
         [vagrant@docker wordpress]$ docker run -d -p 4000:80 --name blog tutum/wordpress
         
         # You can access wordpress using browse http://localhost:4000 
         
         # if you want to list our running containers use following command.
         [vagrant@docker wordpress]$ docker container ls
           (or)
         [vagrant@docker wordpress]$ docker ps
         
         # Command to remove blog container 
         [vagrant@docker wordpress]$ docker rm -f blog
         
         # Docker command to login into container 
         [vagrant@docker wordpress]$ docker exec -it blog bash
         
         
#### Docker rommands to run wordpress and mysql in different containers
         [vagrant@docker ~]$ mkdir wordpress02
         [vagrant@docker ~]$ cd wordpress02
         [vagrant@docker wordpress02]$ docker run --name wp-mysql -e MYSQL_ROOT_PASSWORD=yoursecretpassword -d mysql
         [vagrant@docker wordpress02]$ docker run --name wordpress --link wp-mysql:mysql -p 8000:80 -d  wordpress
         
         
         # command to loging wordpress container
         [vagrant@docker wordpress02]$ docker exec -it  wordpress bash
         
         

         
     
### Host compatability :

    This Vagrant verified on Mac OS.


