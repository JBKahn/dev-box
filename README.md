# dev-box

This repo contains an Ansible provisioned ubuntu based VM for using with Vagrant.
It's main use is to allow me to stop developing on my local machine and have a tighter control on what is on the box I'm running my code on.

## Setup Instructions

1. Install [Virtualbox](https://www.virtualbox.org/) and [Vagrant](https://www.vagrantup.com/).
2. Clone this directory and cd into it.
3. Run `vagrant up`
4. Run `./add_host.sh` (This forwards the ports for my webapps which are running on the box).

### SSH into the machine:

    vagrant ssh

### Navigate a project folder and activate virtualenv (if applicable):

    workon [projectname]

### Use Honcho inside to start an app (if applicable):

    workon [projectname]
    honcho start

### Ansible

[Ansible](http://www.ansible.com/home) is a configuration management system along the lines of Chef & Puppet, although it has some significant benefits over those tools.

#### Ansible Documentation
* [Main documentation site](http://docs.ansible.com/)
* [Playbooks](http://docs.ansible.com/playbooks.html)
* [Roles](http://docs.ansible.com/playbooks_roles.html#roles)
* [Variables](http://docs.ansible.com/playbooks_variables.html)
* [Loops](http://docs.ansible.com/playbooks_loops.html)
* [Best practices](http://docs.ansible.com/playbooks_best_practices.html)
