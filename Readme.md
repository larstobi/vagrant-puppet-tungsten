This Vagrant Multi-VM setup creates 3 VMs:

 - master
 - slave
 - web


 to allow you to test-drive tungsten replicator.

 Just started this vagrant/puppet bundle...








#################################################################
P.S: pls adjust the hostnames for each VM after the initial vagrant up:

>vim /etc/hostname
web / master / slave

>vim /etc/hosts
 ...

 127.0.0.1 .... web/master/slave

>hostname (web/master/slave)


> vagrant halt
> vagrant up