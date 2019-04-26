## IaaC project : django_lab  
 A Vagrantfile to build single node virtual envirnment for django development.  
 
 Iaac/django_lab/Vagrantfile  : This Vagrantfile contains following configuration to create a dijango environment on a centos/7 VM.
    1. In this environment host folder "django_lab" is mounted on centos/7 guest as /home/vagrant/django_lab.
    2. Guest environment port 8080 also mapped with host port 8080
        
   With these configurations we can do devleopment using host GUI based editors, on guest machine we can compile and 
    we can use host browser to view django devlopment pages. 



### Steps :  
  Step 1 :  Install virtual box (https://www.virtualbox.org)

  Step 2 :  Install vagrant  (https://www.vagrantup.com)

  Step 3 :  Download and  Vagrant file  
       git clone https://github.com/malyabee/IaaC.git  

  Step 4  : starting virtual machines 

       $ cd IaaC/django_lab
 
       $ vagrant up



### commands to loginvirtual machine
     cd IaaC/django_lab 

     vagrant ssh 
     



     
Note 
Host compatability
    This Vagrant verified on Mac OS.
