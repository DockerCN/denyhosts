#!/bin/sh
set -e

rm -f /var/lock/subsys/denyhosts

/usr/share/denyhosts/daemon-control restart

tail -f -n 0 /var/log/denyhosts
