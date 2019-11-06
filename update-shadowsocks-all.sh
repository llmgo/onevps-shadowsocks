#!/bin/bash
PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin

wget --no-check-certificate -O /root/install-shadowsocks-all.sh https://raw.githubusercontent.com/thinkhuge-ss/shadowsocks_install/master/shadowsocks-all.sh
chmod 750 /root/install-shadowsocks-all.sh
echo '' >> /root/install-shadowsocks-all.sh
echo 'if [ -f "/etc/init.d/shadowsocks-python" ] || [ -f "/etc/init.d/shadowsocks-r" ] || [ -f "/etc/init.d/shadowsocks-go" ] || [ -f "/etc/init.d/shadowsocks-libev" ] ; then' >> /root/install-shadowsocks-all.sh
echo '/root/restart-shadowsocks-all.sh' >> /root/install-shadowsocks-all.sh
echo 'fi' >> /root/install-shadowsocks-all.sh
echo '' >> /root/install-shadowsocks-all.sh
echo "echo ''" >> /root/install-shadowsocks-all.sh
echo "echo 'Note: reference config locations'" >> /root/install-shadowsocks-all.sh
echo "echo '/etc/shadowsocks-go/config.json'" >> /root/install-shadowsocks-all.sh
echo "echo '/etc/shadowsocks-libev/config.json'" >> /root/install-shadowsocks-all.sh
echo "echo '/etc/shadowsocks-python/config.json'" >> /root/install-shadowsocks-all.sh
echo "echo '/etc/shadowsocks-r/config.json'" >> /root/install-shadowsocks-all.sh
echo "echo ''" >> /root/install-shadowsocks-all.sh
echo "echo 'Note: iptables is not enabled by default.  If you will enable iptables edit /etc/iptables/rules.v4 for your chosen port(s)'" >> /root/install-shadowsocks-all.sh
echo 'Update complete.  Run /root/install-shadowsocks-all.sh now to (re)install'
