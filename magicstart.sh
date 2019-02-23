#!/bin/bash

# Check root access
if [ "x$(id -u)" != 'x0' ]; then
    echo 'Error: this script can only be executed by root'
    exit 1
fi

# Create temporary folder
if [ ! -d /opt/tmp ]; then
    mkdir /opt/tmp
fi

cd /opt/tmp

# Download script and make execute script
curl -O https://raw.githubusercontent.com/bayuadinh/magic-script/master/magic-database
curl -O https://raw.githubusercontent.com/bayuadinh/magic-script/master/magic-firewall
curl -O https://raw.githubusercontent.com/bayuadinh/magic-script/master/magic-monitor
curl -O https://raw.githubusercontent.com/bayuadinh/magic-script/master/magic-search
chmod +x /opt/tmp/*

mv /opt/tmp/* /usr/bin