# Provisioning project

​
What did you need to do to provision a vm to run mongo db?

Create a VagrantFile with the desired requirements for the machine, create shell scripts for MongoDB, passing through the required settings to allow the connections and instances to work, changing anything as required. Vagrant up the machine to get it online.

​
What did you need to do to provision a vm to:

- Run the node.js application?
  Have a shell script created which has a command to install node and the required packages and to run a script via node "node filename.js"

- Use the `nology.training` alias?
  Create a config file that has the VirtualHost settings in there with the required changes that you'd like and to then have the shell script copy the file and write over the existing one in the VM.

- Use apache server to direct traffic to a given port?
  Create a proxy.conf for the required app that needs to be routed, specifing with a ProxyPass which port you wish to use.

- How are you able to pass in the DB connection string?
  ​Create a mongod.conf file with the required connection settings and copy that across to the /etc/mongod.conf existing file in the VM.

---

​

## General Environment Questions

​

- What are development environments?
  An area that allows the user to run scripts/software
- How do they relate to an application?
  ​Perhaps you need to install packages to run an app. Then you would enable commands in a script to allow them to be installed before accessing an application. Which in turn allows the app to run.

### Virtual machines

​

- What is a virtual machine?
  A Virtual Machine is a remote web based PC that runs on cloud computing infastructure
- What does it allow you to do?
  It allows for you to provision a machine to be able to run files/scripts, do anything you'd like without "harming" your own PC.
- How have you used one?
  ​Created many instances to test build environments and to push to github

### Vagrant

​

- What is vagrant?
  Vagrant is a provision program that allows you to use a Virtual Machine
- What is a `VagrantFile`?
  ​A VagrantFile is a file that allows you to command instructions to how your virtual machines should be implemented

#### CLI commands

​
| Command | What does it do? | When did you use it? |
| --------- | ---------------- | -------------------- |
| reload | This reloads the target VM | Whenever a change is made to the VagrantFile and I want it to take affect |
| up | Starts up the process of booting up a VM via provisioning | To start up a VM when required |
| provision | Reruns a specified set of instructions whilst the VM is running | When we've wanted to make changes to a shell script and to have the changes implemented |
| destroy | Completely removes an instance of a VM | Whenever I've not need to run a VM again or if i've had issues with a running VM |
| suspend | Pauses the VM at it's current point so that you don't lose it's instance | If I've wanted to stop running my VM when I'm not using it for the time being |
| ssh | SSH enables two computers to communicate, if I want to make changes into a VM then I need to "SSH" into the machine so that I can get into the file structure | Whenever I've wanted to see files or folders, or to add files/folders from within the machine |
​

#### Provisioning

​

- What is Provisioning in relation to Vagrant?
  ​Provisioning is the process that allows automation for a setup/configuration for a VM. You can allow to use of shell scripts to enable a more defined provision, whether that be installing programs/dependencies to just changing files.

---
