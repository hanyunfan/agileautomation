#!/bin/bash

##Frank Han 5/19


#if no args then exit
if [ $? != 1 ] echo "need to have the customer name as parameter" ||CUSTID=$1

#Perpare image directory
mkdir -p /home/agile/images
chown agile:agile /home/agile/images
mount --bind /var/lib/libvirt/images /home/agile/images

#Installation directory
mkdir -p /home/agile/isos
chown agile:agile /home/agile/isos

#create the disk of VMs
##If VMs realy exist ask what to do, delete or quit
#disk for File server windows 2012 OS
qeum-img create -f qcow2 /home/agile/images/win2k12-$CUSTID-OS.qcow2 80G
#For application server OS
qeum-img create -f qcow2 /home/agile/images/win2k12-$CUSTID-OS.qcow2 80G
#For Datebase server OS
qeum-img create -f qcow2 /home/agile/images/win2k12-$CUSTID-OS.qcow2 80G
#For Datebase server DB /u01 directory
qeum-img create -f qcow2 /home/agile/images/win2k12-$CUSTID-OS.qcow2 80G
#For web server OS
qeum-img create -f qcow2 /home/agile/images/win2k12-$CUSTID-OS.qcow2 80G
#For test machine
#qeum-img create -f qcow2 /home/agile/images/win2k12-$CUSTID-OS.qcow2 80G
