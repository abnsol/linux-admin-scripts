#!/bin/bash

#create archive and backup
mkdir ~/archive
mkdir ~/backup

#move to var/log dir
cd /var/log

#archive
tar -cvf ~/archive/log.tar *.log
#list
cd 
tar -tf archvie/log.tar
#extract
cd ~/backup
tar -xf ~/archive/log.tar

