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

### commands to login docker virtual machines
     cd IaaC/docker_lab 

     vagrant ssh 
     
###  commands to verify docker version  and start docker daemon
      [vagrant@docker ~]$ docker version
       
       # starting docker daemon
       [vagrant@docker ~]$ sudo systemctl start docker
       
       
   
   
#### Running wordpress container  
         [vagrant@docker ~]$ mkdir wordpress
         [vagrant@docker ~]$ cd wordpress
         [vagrant@docker wordpress]$ docker pull tutum/wordpress
         [vagrant@docker wordpress]$ docker run -d -p 4000:80 --name blog tutum/wordpress
         
         # You can access wordpress using browse http://localhost:4000 
         
         # if you want to list our running containers use following command.
         [vagrant@docker wordpress]$ docker container ls
         
         
         
         
     
### Host compatability :

    This Vagrant verified on Mac OS.


