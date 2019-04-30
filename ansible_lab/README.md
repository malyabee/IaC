## IaaC project : anisble_lab  
 A Vagrantfile to build multi node virtual envirnment to learn ansible or devleop ansible palybooks.  
 Iaac/ansible_lab/Vagrantfile  : This Vagrantfile contains the information needed to create a virtual ansible_lab cluster comprising Three virtual machines.
 

1. One Ansible controller  server (centos/7)
    The ansible controler server configured with ansible software and ready to develop play books
    The ansible controller server also has a passphraseless SSH key for access to the other nodes in the virtual cluster.

2. two normal nodes (node01 and node02 )
     These two servers can be used as a target nodes for ansible playbooks. 


### Steps :  
  Step 1 :  Install virtual box (https://www.virtualbox.org)

  Step 2 :  Install vagrant  (https://www.vagrantup.com)

  Step 3 :  Download and  Vagrant file  
       git clone https://github.com/malyabee/IaaC.git  

  Step 4  : starting virtual machines 

       $ cd IaaC/ansible_lab
 
       $ vagrant up

### commands to login three virtual machines
     cd IaaC/ansible_lab 

     vagrant ssh ansiblecontroller
     vagrant ssh node01
     vagrant ssh node02
   You can also login node01, node01 from ansiblecontroller without password.

Note 
Host compatability
    This Vagrant verified on Mac OS.


You can learn ansible using
https://sysadmincasts.com/episodes/43-19-minutes-with-ansible-part-1-4
https://sysadmincasts.com/episodes/45-learning-ansible-with-vagrant-part-2-4
https://sysadmincasts.com/episodes/46-configuration-management-with-ansible-part-3-4
https://sysadmincasts.com/episodes/47-zero-downtime-deployments-with-ansible-part-4-4


Ubuntu based ansbile devlab available at  
https://github.com/jweissig/episode-45 