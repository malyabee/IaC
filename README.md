# IaaC - Infrastructure as a code 

This project host diffiert cluster environments as a Code. 


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



### Vagrant Command Summary

To get a complete list of available commands:

```
vagrant list-commands
```

For example:

```
$ vagrant list-commands
Below is a listing of all available Vagrant commands and a brief
description of what they do.

box             manages boxes: installation, removal, etc.
cap             checks and executes capability
connect         connect to a remotely shared Vagrant environment
destroy         stops and deletes all traces of the vagrant machine
docker-exec     attach to an already-running docker container
docker-logs     outputs the logs from the Docker container
docker-run      run a one-off command in the context of a container
global-status   outputs status Vagrant environments for this user
halt            stops the vagrant machine
help            shows the help for a subcommand
init            initializes a new Vagrant environment by creating a Vagrantfile
list-commands   outputs all available Vagrant subcommands, even non-primary ones
login           log in to HashiCorp's Atlas
package         packages a running vagrant environment into a box
plugin          manages plugins: install, uninstall, update, etc.
port            displays information about guest port mappings
powershell      connects to machine via powershell remoting
provider        show provider for this environment
provision       provisions the vagrant machine
push            deploys code in this environment to a configured destination
rdp             connects to machine via RDP
reload          restarts vagrant machine, loads new Vagrantfile configuration
resume          resume a suspended vagrant machine
rsync           syncs rsync synced folders to remote machine
rsync-auto      syncs rsync synced folders automatically when files change
share           share your Vagrant environment with anyone in the world
snapshot        manages snapshots: saving, restoring, etc.
ssh             connects to machine via SSH
ssh-config      outputs OpenSSH valid configuration to connect to the machine
status          outputs status of the vagrant machine
suspend         suspends the machine
up              starts and provisions the vagrant environment
validate        validates the Vagrantfile
version         prints current and latest Vagrant version
```

To start a VM:

```
vagrant up [<vm name>]
```

To connect to a VM:

```
vagrant ssh [<vm name>]
```

To reboot a VM:

```
vagrant reload [<vm name>]
```

**Note:** Don't reboot a VM from within the guest shell. Always use the `vagrant reload` command from the host. Rebooting from within the guest invalidates the SSH configuration and will prevent a connection being made on the next boot.

To get the current status of all VMs in a project:

```
vagrant status
```

To suspend the VM:

```
vagrant suspend
```

To restore a suspended VM:

```
vagrant resume
```

To review the SSH configuration that was used to establish a connection, run this command from the project directory:

```
vagrant ssh-config [<vm name>]
```

To tear down and delete the VM:

```
vagrant destroy [-f]
```

To get a list of forwarded ports on each host, run:

```
vagrant port <vm name>
```

Refer to the Vagrant documentation for more information:

https://www.vagrantup.com/docs



This might be suitable for people who are going to attend the 'the Safari Live Training Course "Ansible in 3 Hours"' by Sander van Vugt
