IaaC - Infrastructure as a code 


IaaC project : anisble_lab 
 The main aim of this project is to provide a sigle Vagrant file to set up multi node virtual envirnment to learn ansible or devleop ansible palybooks.  
 
 

Iaac/ansible_lab/Vagrantfile  :  will start 3 centos/7 vms and install required pacakges for ansible environment. 

you can use this environment to build ansible playbooks.


Steps :  
Step 1 :  Install virtual box (https://www.virtualbox.org)

Step 2 :  Install vagrant  (https://www.vagrantup.com)

Step 3 :  Download and  Vagrant file  
       git clone https://github.com/malyabee/IaaC.git  

Step 4  : starting virtual machines 

 $ cd IaaC/ansible_lab
 
 $ vagrant up

#commands to login three virtual machines
cd IaaC/ansible_lab 

vagrant ssh ansiblecontroller
vagrant ssh node01
vagrant ssh node02


We can also login node01, node01 from ansiblecontroller without password.

Host compatability
    This Vagrant verified on Mac OS.


This might be suitable for people who are going to attend the 'the Safari Live Training Course "Ansible in 3 Hours"' by Sander van Vugt
