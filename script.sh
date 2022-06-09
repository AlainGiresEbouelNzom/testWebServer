#!/bin/bash

echo -e " \n\n=========== PREPARATION.....========"

#Check if nmap exist, and intall it if not
if [ ! -e /usr/bin/nmap ]
then
        echo -e "\n -----nmap installation ----"
        yum install -y nmap

fi


echo -e "\n**********INVENTORY CHECKING*******\n"
echo "-----OS and Kernel----"
touch tempFile
hostnamectl | grep  Operating
hostnamectl | grep  Kernel

echo -e "\n----CPU and Memory----"
grep "cpu MHz" -m 1 /proc/cpuinfo
grep "model name" -m 1 /proc/cpuinfo
grep MemTotal -m 1 /proc/meminfo

#Os running and vers
#sed -n '7'p tempFile

#Kernel version
#sed -n '9'p tempFile


#Cpu speed
#sed -n '1'p /proc/cpuinfo

#memory speed
#sed -n '1'p /proc/meminfo

#Size of harddrive

echo -e "\n----Hard Drive infos---"
fdisk -l | grep Device
fdisk -l | grep dev

echo -e "\n ----System bits----"
hostnamectl | grep Architecture -i

echo -e "\n---hostname---"
hostname

echo -e "\n----ip adress-----"
hostname -I

echo -e "\n ---open ports----"
nmap $HOSTNAME |grep PORT -i
nmap $HOSTNAME |grep open -i


echo -e "\n ---DNS----"
grep nameserver -i /etc/resolv.conf


echo -e "\n ----Virtual or Phisical ?----"
hostnamectl | grep chassis -i

echo -e "\n ----MAC Adress ?----"
ifconfig | grep ether -i
#cat tempFile

echo " "
echo "*********END*************"
echo " "

