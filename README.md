# A Development environment based on Java and Python with Vagrant and Chef

## Introduction

This project automates the setup of a development environment for Java and Python. This is the easiest way to build a box with everything ready to start hacking, all in an isolated virtual machine.

## Requirements

* [VirtualBox](https://www.virtualbox.org)
* [Vagrant](http://vagrantup.com)

## How To Build The Virtual Machine

Building the virtual machine is this easy:

    host $ git clone https://github.com/caiosantarossa/chef-dev-box.git
    host $ cd chef-dev-box
    host $ git submodule update --init --recursive
    host $ vagrant up

That's it.

## What's In The Box

- Oracle Java 6
- Play Framwork 2.1.1
- Postgresql
- Python (with PIP and virtualenv)

Vagrant is configured to mount your D:/workspace folder within the virtual machine. Change the SYNCED_FOLDER environment variable to choose another folder.

## Virtual Machine Management

When done just log out with `^D` and suspend the virtual machine

    host $ vagrant suspend

then, resume to hack again

    host $ vagrant resume

Run

    host $ vagrant halt

to shutdown the virtual machine, and

    host $ vagrant up

to boot it again.

You can find out the state of a virtual machine anytime by invoking

    host $ vagrant status

Finally, to completely wipe the virtual machine from the disk **destroying all its contents**:

    host $ vagrant destroy # DANGER: all is gone

Please check the [Vagrant documentation](http://vagrantup.com/v1/docs/index.html) for more information on Vagrant.