#!/bin/bash
PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin

if [ -f "/etc/init.d/shadowsocks-python" ] || [ -f "/etc/init.d/shadowsocks-r" ] || [ -f "/etc/init.d/shadowsocks-go" ] || [ -f "/etc/init.d/shadowsocks-libev" ]
then

        echo ''

        if [ -f "/etc/init.d/shadowsocks-python" ]
        then
                        echo "shadowsocks-python found. restarting"
                        /etc/init.d/shadowsocks-python restart
        else
                        echo "shadowsocks-python not found. skipping"
        fi

        echo ''

        if [ -f "/etc/init.d/shadowsocks-r" ]
        then
                        echo "shadowsocks-r found. restarting"
                        /etc/init.d/shadowsocks-r restart
        else
                        echo "shadowsocks-r not found. skipping"
        fi

        echo ''

        if [ -f "/etc/init.d/shadowsocks-go" ]
        then
                        echo "shadowsocks-go found. restarting"
                        /etc/init.d/shadowsocks-go restart
        else
                        echo "shadowsocks-go not found. skipping"
        fi

        echo ''

        if [ -f "/etc/init.d/shadowsocks-libev" ]
        then
                        echo "shadowsocks-libev found. restarting"
                        /etc/init.d/shadowsocks-libev restart
        else
                        echo "shadowsocks-libev not found. skipping"
                        echo ''
        fi

        else
                        echo ''
                        echo -e "\033[31mNo shadowsocks installs found.\033[39m"
                        echo ''

fi

