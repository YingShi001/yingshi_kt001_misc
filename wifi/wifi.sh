#!/bin/sh
#insmod 8188eu.ko
device=`iwconfig|grep "wl"|awk -F: '{ print $1 }'`
ifconfig $device up
iwconfig
killall wpa_supplicant
wpa_supplicant -B -Dnl80211 -i$device -c /home/linaro/wifi/wpa_supplicant.conf
sleep 2
busybox udhcpc -i $device 
route del default
route add default gw 192.168.1.1
echo "nameserver 114.114.114.114" > /etc/resolv.conf


