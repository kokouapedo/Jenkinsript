#!/bin/bash
# Author : kokou 

# -----------------Jenkins installation on ubuntu-----------#

#----------------- Add repository key to the system-------#

wget -q -O - https://pkg.jenkins.io/debian-stable/jenkins.io.key | sudo apt-key add -


#----------------Append Debian pakage repository address to the server--------#

sudo sh -c 'echo deb http://pkg.jenkins.io/debian-stable binary/ > /etc/apt/sources.list.d/jenkins.list'


#------------------- Update running-------#

sudo apt update



#----------------Jenkins installation-------#

sudo apt install jenkins


#---------------- Jenkisn starting-----------#

sudo systemctl start jenkins


#------------------Jenkins status-------------#

sudo systemctl status jenkins

#---------------Firewall openning------------#


sudo ufw allow 8080

sudo ufw allow OpenSSH

sudo ufw enable


#--------------firewall status-----------------#

sudo ufw status

