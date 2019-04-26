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



### commands to login virtual machine
     cd IaaC/django_lab 

     vagrant ssh 
     

## Django installation through pip in a Virtualenv

Create a new project directory 

     mkdir ~/django_lab/<newproject>
     cd  ~/django_lab/<newproject>

Now create a virtual environment with in <newprojcet> directory
 
    virtualenv <newenv>
    
 
To install pacakages into the isolated environment, you must activate it with following command

     source <newenv>/bin/activate
     
Install django usign pip

     pip install django
     
  
Verify installation using 

     djaongo-admin --version
     
to leave virtual environment  you can run dactivate command
     
     deactivate 
  
  
To re-activate your virtual environment

    cd ~/django_lab/<newproject>
    source <newenv>/bin/activiate
    
Note : <newproject> is your project name. you can choose any name
       <newenv> is your virutual environment name.

### Example commands to deploy Django

     mkdir  ~/django_lab/firstproject
     cd  ~/django_lab/firstproject
     virtualenv denv
     source denv/bin/activate
     pip install django
     django-admin --version
     deactivate 
     
### Creating Simple project 

   
     cd  ~/django_lab/firstproject
     source denv/bin/activate
     django-admin --version
     django-admin startproject myproject .
     python manage.py migrate
     
     # to create super user run following command and set username, emailid. password
     python manage.py createsuperuser
     
     #run django based server using following command
     python manage.py runserver 0.0.0.0:8080
     
     
     # Visit localhost:8080 on host machine browser
        
        http://localhost:8080
        
      
      you can also verify http://localhost:8080/admin url as well
      
      --- Happy coding --
      
      
      # To stop django development server by typing "CTRL-C" in your django guest terminal.
         
     
     
     

     
### Note 
 Host compatability :
 
    This Vagrant verified on Mac OS.


### Reference
   This Vagrant file build used "Install through pip in a Virtualenv:" method for django environment. This method is described at https://www.digitalocean.com/community/tutorials/how-to-install-the-django-web-framework-on-centos-7
