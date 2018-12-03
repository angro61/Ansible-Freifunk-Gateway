#!/bin/sh
for bat in `systemctl | grep yanic | grep bat | grep active | awk  '{print $5}' | cut -d '_' -f 2`; do
    echo "config file for $bat is: "
    ls /etc/yanic/yanic_$bat.conf
    echo "fe80 address is: "`ifconfig $bat | grep fe80 | awk  '{print $2}' | cut -d '/' -f 1`
done
