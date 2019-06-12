# IaaC - Infrastructure as a code 

This project host differt cluster environments (Infrasturcture as a Code) for Learning different tools and to build Development environment.


In this project you can find multiple Vagrantfiles to setup different virtual environments based on "centos/7"
All these Vagrant files configured  virtualbox as a provider. 


Install virtual box from (https://www.virtualbox.org)
Install vagrant  from  (https://www.vagrantup.com)

You can run Vagrant, Virtualbox on MacOS, Windows and Linux. 


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
