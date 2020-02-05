#!/bin/bash

apt-get update > /var/log/update-$(date +%Y%m%d).log
echo 'Put me in cron please'
