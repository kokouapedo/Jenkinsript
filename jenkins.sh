#!/bin/bash

# Author :  Kokou Apedo

#-------------------------------Script to iinstall Jenkins----------------------#


#--------------Add the repository key to the system-------------------------------#

wget -q -O - https://pkg.jenkins.io/debian-stable/jenkins.io.key | sudo apt-key add -
# wget -q -O - https://pkg.jenkins.io/debian-stable/jenkins.io.key | sudo apt-key add -

#-------------------Append Debian package repository--------------------------------#

sudo sh -c 'echo deb http://pkg.jenkins.io/debian-stable binary/ > /etc/apt/sources.list.d/jenkins.list'

#---------------------Update so The cmd apt can use the new repository------------------------------#

sudo apt update

#----------------------jenkins installation-----------------------------#

sudo apt install jenkins

#-----------------------jenkins starting----------------------------#

sudo systemctl start jenkins


#------------------------Jenkins status----------------------#

sudo systemctl status jenkins


