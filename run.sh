#!/bin/bash
set -e

mkdir -p /var/run/lock/subsys/
touch /var/log/secure
rm -f /var/lock/subsys/denyhosts

/usr/share/denyhosts/daemon-control restart

while true; do
	sleep 1000
done
