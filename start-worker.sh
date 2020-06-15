#!/bin/sh

. /start-common.sh

/opt/spark/sbin/start-slave.sh spark://$master_ip:7077
