#!/bin/bash
# SL
# ==========================================
# Color
RED='\033[0;31m'
NC='\033[0m'
GREEN='\033[0;32m'
ORANGE='\033[0;33m'
BLUE='\033[0;34m'
PURPLE='\033[0;35m'
CYAN='\033[0;36m'
LIGHT='\033[0;37m'
# ==========================================
# Getting
MYIP=$(wget -qO- ipinfo.io/ip);
echo "Checking VPS"
IZIN=$( curl ipinfo.io/ip | grep $MYIP )
if [ $MYIP = $MYIP ]; then
echo -e "${NC}${GREEN}Permission Accepted...${NC}"
else
echo -e "${NC}${RED}Permission Denied!${NC}";
echo -e "${NC}${LIGHT}Fuck You!!"
exit 0
fi
clear
# // Certificate File
path_crt="/etc/shadowsocks/xray.crt"
path_key="/etc/shadowsocks/xray.key"
IP=$(wget -qO- ipinfo.io/ip);
lastport1=$(grep "port_tls" /etc/shadowsocks-libev/akun.conf | tail -n1 | awk '{print $2}')
lastport2=$(grep "port_http" /etc/shadowsocks-libev/akun.conf | tail -n1 | awk '{print $2}')
lastport3=$(grep "port_v2rayawss" /etc/shadowsocks-libev/akun.conf | tail -n1 | awk '{print $2}')
lastport4=$(grep "port_v2raybws" /etc/shadowsocks-libev/akun.conf | tail -n1 | awk '{print $2}')
lastport5=$(grep "port_v2raygrpc" /etc/shadowsocks-libev/akun.conf | tail -n1 | awk '{print $2}')
lastport6=$(grep "port_v2rayquic" /etc/shadowsocks-libev/akun.conf | tail -n1 | awk '{print $2}')
lastport7=$(grep "port_xraybws" /etc/shadowsocks-libev/akun.conf | tail -n1 | awk '{print $2}')
lastport8=$(grep "port_xrayawss" /etc/shadowsocks-libev/akun.conf | tail -n1 | awk '{print $2}')
lastport9=$(grep "port_xraygrpctls" /etc/shadowsocks-libev/akun.conf | tail -n1 | awk '{print $2}')
alastport1=$(grep "port_xraygrpchttp" /etc/shadowsocks-libev/akun.conf | tail -n1 | awk '{print $2}')
alastport2=$(grep "port_xrayquic" /etc/shadowsocks-libev/akun.conf | tail -n1 | awk '{print $2}')
alastport3=$(grep "port_gosttls" /etc/shadowsocks-libev/akun.conf | tail -n1 | awk '{print $2}')
alastport4=$(grep "port_gostmtls" /etc/shadowsocks-libev/akun.conf | tail -n1 | awk '{print $2}')
alastport5=$(grep "port_gostxtls" /etc/shadowsocks-libev/akun.conf | tail -n1 | awk '{print $2}')
alastport6=$(grep "port_gostgrpc" /etc/shadowsocks-libev/akun.conf | tail -n1 | awk '{print $2}')
alastport7=$(grep "port_gostbws" /etc/shadowsocks-libev/akun.conf | tail -n1 | awk '{print $2}')
alastport8=$(grep "port_gostawss" /etc/shadowsocks-libev/akun.conf | tail -n1 | awk '{print $2}')
alastport9=$(grep "port_gostbmws" /etc/shadowsocks-libev/akun.conf | tail -n1 | awk '{print $2}')
blastport1=$(grep "port_gostamwss" /etc/shadowsocks-libev/akun.conf | tail -n1 | awk '{print $2}')
blastport2=$(grep "port_gostquic" /etc/shadowsocks-libev/akun.conf | tail -n1 | awk '{print $2}')
blastport3=$(grep "port_gosth2" /etc/shadowsocks-libev/akun.conf | tail -n1 | awk '{print $2}')


if [[ $lastport1 == '' ]]; then
tls=2443
else
tls="$((lastport1+1))"
fi
if [[ $lastport2 == '' ]]; then
http=3443
else
http="$((lastport2+1))"
fi
if [[ $lastport3 == '' ]]; then
v2rayawss=521
else
v2rayawss="$((lastport3+1))"
fi
if [[ $lastport4 == '' ]]; then
v2raybws=522
else
v2raybws="$((lastport4+1))"
fi
if [[ $lastport5 == '' ]]; then
v2raygrpc=523
else
v2raygrpc="$((lastport5+1))"
fi
if [[ $lastport6 == '' ]]; then
v2rayquic=526
else
v2rayquic="$((lastport6+1))"
fi
if [[ $lastport7 == '' ]]; then
xraybws=621
else
xraybws="$((lastport7+1))"
fi
if [[ $lastport8 == '' ]]; then
xrayawss=622
else
xrayawss="$((lastport8+1))"
fi
if [[ $lastport9 == '' ]]; then
xraygrpctls=623
else
xraygrpctls="$((lastport9+1))"
fi
if [[ $lastport1 == '' ]]; then
xraygrpchttp=624
else
xraygrpchttp="$((alastport1+1))"
fi
if [[ $lastport2 == '' ]]; then
xrayquic=625
else
xrayquic="$((alastport2+1))"
fi
if [[ $alastport3 == '' ]]; then
gosttls=751
else
gosttls="$((alastport3+1))"
fi
if [[ $alastport4 == '' ]]; then
gostmtls=752
else
gostmtls="$((lastport4+1))"
fi
if [[ $alastport5 == '' ]]; then
gostxtls=753
else
gostxtls="$((alastport5+1))"
fi
if [[ $alastport6 == '' ]]; then
gostgrpc=754
else
gostgrpc="$((alastport6+1))"
fi
if [[ $alastport7 == '' ]]; then
gostbws=755
else
gostbws="$((alastport7+1))"
fi
if [[ $alastport8 == '' ]]; then
gostawss=756
else
gostawss="$((alastport8+1))"
fi
if [[ $alastport9 == '' ]]; then
gostbmws=757
else
gostbmws="$((alastport9+1))"
fi
if [[ $blastport20 == '' ]]; then
gostamwss=758
else
gostamwss="$((blastport1+1))"
fi
if [[ $lastport21 == '' ]]; then
gostquic=759
else
gostquic="$((blastport2+1))"
fi
if [[ $lastport3 == '' ]]; then
gosth2=760
else
gosth2="$((blastport3+1))"
fi
source /var/lib/crot/ipvps.conf
if [[ "$IP2" = "" ]]; then
domain=$(cat /etc/shadowsocks/domain)
else
domain=$IP2
fi

#Default
cat > /etc/shadowsocks-libev/tls.json<<END
{   
    "server":"0.0.0.0",
    "server_port":$tls,
    "password":"tls",
    "timeout":60,
    "method":"aes-256-cfb",
    "fast_open":true,
    "no_delay":true,
    "nameserver":"8.8.8.8",
    "mode":"tcp_and_udp",
    "plugin":"obfs-server",
    "plugin_opts":"obfs=tls"
}
END
cat > /etc/shadowsocks-libev/http.json <<-END
{
    "server":"0.0.0.0",
    "server_port":$http,
    "password":"http",
    "timeout":60,
    "method":"aes-256-cfb",
    "fast_open":true,
    "no_delay":true,
    "nameserver":"8.8.8.8",
    "mode":"tcp_and_udp",
    "plugin":"obfs-server",
    "plugin_opts":"obfs=http"
}
END
chmod +x /etc/shadowsocks-libev/tls.json
chmod +x /etc/shadowsocks-libev/http.json

systemctl enable shadowsocks-libev-server@tls.service
systemctl start shadowsocks-libev-server@tls.service
systemctl enable shadowsocks-libev-server@http.service
systemctl start shadowsocks-libev-server@http.service
#
echo ""
echo "Masukkan Password"

until [[ $user =~ ^[a-zA-Z0-9_]+$ && ${CLIENT_EXISTS} == '0' ]]; do
		read -rp "Password : " -e user
		CLIENT_EXISTS=$(grep -w $user /etc/shadowsocks-libev/akun.conf | wc -l)

		if [[ ${CLIENT_EXISTS} == '1' ]]; then
			echo ""
			echo -e "Username ${RED}${user}${NC} Already On VPS Please Choose Another"
			exit 1
		fi
	done
read -p "Expired (Days) : " masaaktif
hariini=`date -d "0 days" +"%Y-%m-%d"`
exp=`date -d "$masaaktif days" +"%Y-%m-%d"`
#obfs-tls
cat > /etc/shadowsocks-libev/$user-tls.json<<END
{   
    "server":"0.0.0.0",
    "server_port":$tls,
    "password":"$user",
    "timeout":60,
    "method":"aes-256-cfb",
    "fast_open":true,
    "no_delay":true,
    "nameserver":"8.8.8.8",
    "mode":"tcp_and_udp",
    "plugin":"obfs-server",
    "plugin_opts":"obfs=tls"
}
END
#obfs-http
cat > /etc/shadowsocks-libev/$user-http.json <<-END
{
    "server":"0.0.0.0",
    "server_port":$http,
    "password":"$user",
    "timeout":60,
    "method":"aes-256-cfb",
    "fast_open":true,
    "no_delay":true,
    "nameserver":"8.8.8.8",
    "mode":"tcp_and_udp",
    "plugin":"obfs-server",
    "plugin_opts":"obfs=http"
}
END
#v2raywss
cat > /etc/shadowsocks-libev/$user-v2raywss.json<<END
{
    "server":"0.0.0.0",
    "server_port":$v2rayawss,
    "password":"$user",
    "timeout":60,
    "method":"aes-256-cfb",
    "nameserver":"8.8.8.8",
    "mode":"tcp_and_udp",
    "plugin":"v2ray-plugin",
    "plugin_opts":"server;tls;path=/v2ray;cert=$path_crt;key=$path_key"
}
END
#v2rayws
cat > /etc/shadowsocks-libev/$user-v2rayws.json <<-END
{
    "server":"0.0.0.0",
    "server_port":$v2raybws,
    "password":"$user",
    "timeout":60,
    "method":"aes-256-cfb",
    "nameserver":"8.8.8.8",
    "mode":"tcp_and_udp",
    "plugin":"v2ray-plugin",
    "plugin_opts":"mux=0;server;path=/v2ray"
}
END
#v2raygrpc
cat > /etc/shadowsocks-libev/$user-v2raygrpc.json<<END
{
    "server":"0.0.0.0",
    "server_port":$v2raygrpc,
    "password":"$user",
    "timeout":60,
    "method":"aes-256-cfb",
    "nameserver":"8.8.8.8",
    "mode":"tcp_and_udp",
    "plugin":"v2ray-plugin",
    "plugin_opts":"server;tls;mode=grpc;cert=$path_crt;key=$path_key"
}
END
#v2rayquic
cat > /etc/shadowsocks-libev/$user-v2rayquic.json<<END
{
    "server":"0.0.0.0",
    "server_port":$v2rayquic,
    "password":"$user",
    "timeout":60,
    "method":"aes-256-cfb",
    "nameserver":"8.8.8.8",
    "mode":"tcp_only",
    "plugin":"v2ray-plugin",
    "plugin_opts":"server;tls;mode=quic;cert=$path_crt;key=$path_key"
}
END
#xraywss
cat > /etc/shadowsocks-libev/$user-xraywss.json<<END
{
    "server":"0.0.0.0",
    "server_port":$xrayawss,
    "password":"$user",
    "timeout":60,
    "method":"aes-256-cfb",
    "nameserver":"8.8.8.8",
    "mode":"tcp_and_udp",
    "plugin":"xray-plugin",
    "plugin_opts":"mux=1;server;tls;path=/xray;cert=$path_crt;key=$path_key"
}
END
#xrayws
cat > /etc/shadowsocks-libev/$user-xrayws.json <<-END
{
    "server":"0.0.0.0",
    "server_port":$xraybws,
    "password":"$user",
    "timeout":60,
    "method":"aes-256-cfb",,
    "nameserver":"8.8.8.8",
    "mode":"tcp_and_udp",
    "plugin":"xray-plugin",
    "plugin_opts":"mux=1;server;path=/xray"
}
END
#xraygrpctls
cat > /etc/shadowsocks-libev/$user-xraygrpctls.json<<END
{
    "server":"0.0.0.0",
    "server_port":$xraygrpctls,
    "password":"$user",
    "timeout":60,
    "method":"aes-256-cfb",
    "nameserver":"8.8.8.8",
    "mode":"tcp_and_udp",
    "plugin":"xray-plugin",
    "plugin_opts":"mux=1;server;tls;mode=grpc;cert=$path_crt;key=$path_key"
}
END
#xraygrpchttp
cat > /etc/shadowsocks-libev/$user-xraygrpchttp.json <<-END
{
    "server":"0.0.0.0",
    "server_port":$xraygrpchttp,
    "password":"$user",
    "timeout":60,
    "method":"aes-256-cfb",
    "nameserver":"8.8.8.8",
    "mode":"tcp_and_udp",
    "plugin":"xray-plugin",
    "plugin_opts":"mux=1;server;mode=grpc"
}
END
#xrayquic
cat > /etc/shadowsocks-libev/$user-xrayquic.json<<END
{
    "server":"0.0.0.0",
    "server_port":$xrayquic,
    "password":"$user",
    "timeout":60,
    "method":"aes-256-cfb",
    "nameserver":"8.8.8.8",
    "mode":"tcp_only",
    "plugin":"xray-plugin",
    "plugin_opts":"mux=1;server;tls;mode=quic;host=;cert=$path_crt;key=$path_key"
}
END
#gosttls
cat > /etc/shadowsocks-libev/$user-gosttls.json<<END
{
    "server":"0.0.0.0",
    "server_port":$gosttls,
    "password":"$user",
    "timeout":60,
    "method":"aes-256-cfb",
    "nameserver":"8.8.8.8",
    "mode":"tcp_and_udp",
    "plugin":"gost-plugin",
    "plugin_opts":"server;mode=tls;cert=$path_crt;key=$path_key"
}
END
#gostmtls
cat > /etc/shadowsocks-libev/$user-gostmtls.json<<END
{
    "server":"0.0.0.0",
    "server_port":$gosmtls,
    "password":"$user",
    "timeout":60,
    "method":"aes-256-cfb",
    "nameserver":"8.8.8.8",
    "mode":"tcp_and_udp",
    "plugin":"gost-plugin",
    "plugin_opts":"server;cert=$path_crt;key=$path_key;mode=mtls"
}
END
#gostxtls
cat > /etc/shadowsocks-libev/$user-gostxtls.json<<END
{
    "server":"0.0.0.0",
    "server_port":$gostxtls,
    "password":"$user",
    "timeout":60,
    "method":"aes-256-cfb",
    "nameserver":"8.8.8.8",
    "mode":"tcp_and_udp",
    "plugin":"gost-plugin",
    "plugin_opts":"server;mode=xtls;cert=$path_crt;key=$path_key"
}
END
#gostgrpc
cat > /etc/shadowsocks-libev/$user-gostgrpc.json<<END
{
    "server":"0.0.0.0",
    "server_port":$gostgrpc,
    "password":"$user",
    "timeout":60,
    "method":"aes-256-cfb",
    "nameserver":"8.8.8.8",
    "mode":"tcp_and_udp",
    "plugin":"gost-plugin",
    "plugin_opts":"server;mode=grpc;cert=$path_crt;key=$path_key"
}
END
#gostws
cat > /etc/shadowsocks-libev/$user-gostws.json<<END
{
    "server":"0.0.0.0",
    "server_port":$gostbws,
    "password":"$user",
    "timeout":60,
    "method":"aes-256-cfb",
    "nameserver":"8.8.8.8",
    "mode":"tcp_and_udp",
    "plugin":"gost-plugin",
    "plugin_opts":"server;mode=ws;path=/gost"
}
END
#gostwss
cat > /etc/shadowsocks-libev/$user-gostwss.json<<END
{
    "server":"0.0.0.0",
    "server_port":$gostawss,
    "password":"$user",
    "timeout":60,
    "method":"aes-256-cfb",
    "nameserver":"8.8.8.8",
    "mode":"tcp_and_udp",
    "plugin":"gost-plugin",
    "plugin_opts":"server;mode=wss;cert=$path_crt;key=$path_key;path=/gost"
}
END
#gostmws
cat > /etc/shadowsocks-libev/$user-gostmws.json<<END
{
    "server":"0.0.0.0",
    "server_port":$gostbmws,
    "password":"$user",
    "timeout":60,
    "method":"aes-256-cfb",
    "nameserver":"8.8.8.8",
    "mode":"tcp_and_udp",
    "plugin":"gost-plugin",
    "plugin_opts":"server;mux=1;mode=mws;path=/gost"
}
END
#gostmwss
cat > /etc/shadowsocks-libev/$user-gostmwss.json<<END
{
    "server":"0.0.0.0",
    "server_port":$gostamwss,
    "password":"$user",
    "timeout":60,
    "method":"aes-256-cfb",
    "nameserver":"8.8.8.8",
    "mode":"tcp_and_udp",
    "plugin":"gost-plugin",
    "plugin_opts":"server;mux=1;mode=mwss;cert=$path_crt;key=$path_key;path=/gost"
}
END
#gostquic
cat > /etc/shadowsocks-libev/$user-gostquic.json<<END
{
    "server":"0.0.0.0",
    "server_port":$gostquic,
    "password":"$user",
    "timeout":60,
    "method":"aes-256-cfb",
    "nameserver":"8.8.8.8",
    "mode":"tcp_only",
    "plugin":"gost-plugin",
    "plugin_opts":"server;mode=quic;cert=$path_crt;key=$path_key"
}
END
#gosth2
cat > /etc/shadowsocks-libev/$user-gosth2.json<<END
{
    "server":"0.0.0.0",
    "server_port":$gosth2,
    "password":"$user",
    "timeout":60,
    "method":"aes-256-cfb",
    "nameserver":"8.8.8.8",
    "mode":"tcp_and_udp",
    "plugin":"gost-plugin",
    "plugin_opts":"server;mode=h2;path=/gost;cert=$path_crt;key=$path_key"
}
END


chmod +x /etc/shadowsocks-libev/$user-tls.json
chmod +x /etc/shadowsocks-libev/$user-http.json
chmod +x /etc/shadowsocks-libev/$user-v2rayws.json
chmod +x /etc/shadowsocks-libev/$user-v2raywss.json
chmod +x /etc/shadowsocks-libev/$user-v2rayquic.json
chmod +x /etc/shadowsocks-libev/$user-v2raygrpc.json
chmod +x /etc/shadowsocks-libev/$user-xrayws.json
chmod +x /etc/shadowsocks-libev/$user-xraywss.json
chmod +x /etc/shadowsocks-libev/$user-xrayquic.json
chmod +x /etc/shadowsocks-libev/$user-xraygrpctls.json
chmod +x /etc/shadowsocks-libev/$user-xraygrpchttp.json
chmod +x /etc/shadowsocks-libev/$user-gosttls.json
chmod +x /etc/shadowsocks-libev/$user-gostmtls.json
chmod +x /etc/shadowsocks-libev/$user-gostxtls.json
chmod +x /etc/shadowsocks-libev/$user-gostgrpc.json
chmod +x /etc/shadowsocks-libev/$user-gostws.json
chmod +x /etc/shadowsocks-libev/$user-gostwss.json
chmod +x /etc/shadowsocks-libev/$user-gostmws.json
chmod +x /etc/shadowsocks-libev/$user-gostmwss.json
chmod +x /etc/shadowsocks-libev/$user-gostquic.json
chmod +x /etc/shadowsocks-libev/$user-gosth2.json


systemctl enable shadowsocks-libev-server@$user-tls.service
systemctl enable shadowsocks-libev-server@$user-http.service
systemctl enable shadowsocks-libev-server@$user-v2rayws.service
systemctl enable shadowsocks-libev-server@$user-v2raywss.service
systemctl enable shadowsocks-libev-server@$user-v2rayquic.service
systemctl enable shadowsocks-libev-server@$user-v2raygrpc.service
systemctl enable shadowsocks-libev-server@$user-xrayws.service
systemctl enable shadowsocks-libev-server@$user-xraywss.service
systemctl enable shadowsocks-libev-server@$user-xraygrpctls.service
systemctl enable shadowsocks-libev-server@$user-xraygrpchttp.service
systemctl enable shadowsocks-libev-server@$user-xrayquic.service
systemctl enable shadowsocks-libev-server@$user-gostls.service
systemctl enable shadowsocks-libev-server@$user-gostmtls.service
systemctl enable shadowsocks-libev-server@$user-gostxtls.service
systemctl enable shadowsocks-libev-server@$user-gostgrpc.service
systemctl enable shadowsocks-libev-server@$user-gostws.service
systemctl enable shadowsocks-libev-server@$user-gostwss.service
systemctl enable shadowsocks-libev-server@$user-gostmws.service
systemctl enable shadowsocks-libev-server@$user-gostmwss.service
systemctl enable shadowsocks-libev-server@$user-gostquic.service
systemctl enable shadowsocks-libev-server@$user-gosth2.service



systemctl start shadowsocks-libev-server@$user-tls.service
systemctl start shadowsocks-libev-server@$user-http.service
systemctl start shadowsocks-libev-server@$user-v2rayws.service
systemctl start shadowsocks-libev-server@$user-v2raywss.service
systemctl start shadowsocks-libev-server@$user-v2rayquic.service
systemctl start shadowsocks-libev-server@$user-v2raygrpc.service
systemctl start shadowsocks-libev-server@$user-xrayws.service
systemctl start shadowsocks-libev-server@$user-xraywss.service
systemctl start shadowsocks-libev-server@$user-xraygrpctls.service
systemctl start shadowsocks-libev-server@$user-xraygrpchttp.service
systemctl start shadowsocks-libev-server@$user-xrayquic.service
systemctl start shadowsocks-libev-server@$user-gosttls.service
systemctl start shadowsocks-libev-server@$user-gostmtls.service
systemctl start shadowsocks-libev-server@$user-gostxtls.service
systemctl start shadowsocks-libev-server@$user-gostgrpc.service
systemctl start shadowsocks-libev-server@$user-gostws.service
systemctl start shadowsocks-libev-server@$user-gostwss.service
systemctl start shadowsocks-libev-server@$user-gostmws.service
systemctl start shadowsocks-libev-server@$user-gostmwss.service
systemctl start shadowsocks-libev-server@$user-gostquic.service
systemctl start shadowsocks-libev-server@$user-gosth2.service


tmp1=$(echo -n "aes-256-cfb:${user}@${MYIP}:$tls" | base64 -w0)
tmp2=$(echo -n "aes-256-cfb:${user}@${MYIP}:$http" | base64 -w0)
tmp3=$(echo -n "aes-256-cfb:${user}@${MYIP}:$v2raybws" | base64 -w0)
tmp4=$(echo -n "aes-256-cfb:${user}@${MYIP}:$v2rayawss" | base64 -w0)
tmp5=$(echo -n "aes-256-cfb:${user}@${MYIP}:$v2rayquic" | base64 -w0)
tmp6=$(echo -n "aes-256-cfb:${user}@${MYIP}:$v2raygrpc" | base64 -w0)
tmp7=$(echo -n "aes-256-cfb:${user}@${MYIP}:$xraybws" | base64 -w0)
tmp8=$(echo -n "aes-256-cfb:${user}@${MYIP}:$xrayawss" | base64 -w0)
tmp9=$(echo -n "aes-256-cfb:${user}@${MYIP}:$xraygrpctls" | base64 -w0)
tmp11=$(echo -n "aes-256-cfb:${user}@${MYIP}:$xraygrpchttp" | base64 -w0)
tmp12=$(echo -n "aes-256-cfb:${user}@${MYIP}:$xrayquic" | base64 -w0)
tmp13=$(echo -n "aes-256-cfb:${user}@${MYIP}:$gosttls" | base64 -w0)
tmp14=$(echo -n "aes-256-cfb:${user}@${MYIP}:$gostmtls" | base64 -w0)
tmp15=$(echo -n "aes-256-cfb:${user}@${MYIP}:$gostxtls" | base64 -w0)
tmp16=$(echo -n "aes-256-cfb:${user}@${MYIP}:$gostgrpc" | base64 -w0)
tmp17=$(echo -n "aes-256-cfb:${user}@${MYIP}:$gostbws" | base64 -w0)
tmp18=$(echo -n "aes-256-cfb:${user}@${MYIP}:$gostawss" | base64 -w0)
tmp19=$(echo -n "aes-256-cfb:${user}@${MYIP}:$gostbmws" | base64 -w0)
tmp20=$(echo -n "aes-256-cfb:${user}@${MYIP}:$gostamwss" | base64 -w0)
tmp21=$(echo -n "aes-256-cfb:${user}@${MYIP}:$gostquic" | base64 -w0)
tmp22=$(echo -n "aes-256-cfb:${user}@${MYIP}:$gosth2" | base64 -w0)


linkss1="ss://${tmp1}?plugin=obfs-local;obfs=tls;obfs-host=bing.com#obfs-tls"
linkss2="ss://${tmp2}?plugin=obfs-local;obfs=http;obfs-host=bing.com#obf-http"
#v2ray
linkss3="ss://${tmp3}?plugin=v2ray-plugin;mux=0;path=/v2ray#v2raywshttp"
linkss4="ss://${tmp4}?plugin=v2ray-plugin;mux=0;tls;path=/v2ray#v2raywstls"
linkss5="ss://${tmp5}?plugin=v2ray-plugin;server;tls;mode=quic;host=#v2rayquictls"
linkss6="ss://${tmp6}?plugin=v2ray-plugin;server;tls;mode=grpc#v2raygrpc"
#xray
linkss7="ss://${tmp7}?plugin=xray-plugin;path=/xray#xraywshttp"
linkss8="ss://${tmp8}?plugin=xray-plugin;path=/xray;tls#xraywstls"
linkss9="ss://${tmp9}?plugin=xray-plugin;tls;mode=grpc#xraygrpctls"
linkss11="ss://${tmp11}?plugin=xray-plugin;mode=grpc#xraygrpchttp"
linkss12="ss://${tmp12}?plugin=xray-plugin;mode=quic;host=#xrayquictls"
#gostlink
linkss13="ss://${tmp13}?plugin=gost-plugin;mode=tls;insecure=1#gost-tls"
linkss14="ss://${tmp14}?plugin=gost-plugin;mode=mtls;insecure=1#gost-mtls"
linkss15="ss://${tmp15}?plugin=gost-plugin;mode=xtls;insecure=1#gost-xtls"
linkss16="ss://${tmp16}?plugin=gost-plugin;mode=grpc#gost-grpc"
linkss17="ss://${tmp17}?plugin=gost-plugin;mode=ws;path=/gost#gostws"
linkss18="ss://${tmp18}?plugin=gost-plugin;mode=wss;path=/gost;insecure=1#gostwss"
linkss19="ss://${tmp19}?plugin=gost-plugin;mode=mws;mux=1;path=/gost#gostmws"
linkss20="ss://${tmp20}?plugin=gost-plugin;mode=mwss;mux=1;path=/gost;insecure=1#gostmwss"
linkss21="ss://${tmp21}?plugin=gost-plugin;mode=quic;insecure=1#gostquic"
linkss22="ss://${tmp22}?plugin=gost-plugin;mode=h2;path=/gost;insecure=1#gosth2"

echo -e "### $user $exp
port_tls $tls
port_http $http
port_v2rayws $v2rayws
port_v2raywss $v2raywss
port_v2rayquic $v2rayquic
port_v2raygrpc $v2raygrpc
port_xrayws $xrayws
port_xraywss $xraywss
port_xraygrpctls $xraygrpctls
port_xraygrpchttp $xraygrpchttp
port_xrayquic $xrayquic
port_gosttls $gosttls
port_gostmtls $gostmtls
port_gostxtls $gostxtls
port_gostgrpc $gostgrpc
port_gostws $gostws
port_gostwss $gostwss
port_gostmws $gostmws
port_gostmwss $gostmwss
port_gostquic $gostquic
port_gosth2 $gosth2">>"/etc/shadowsocks-libev/akun.conf"
cat > /home/vps/public_html/$user.json<<END
# Config Shadowsocks Plugin OBFS
Link obfs tls:
$linkss1
Link obfs http:
$linkss2

# Config Shadowsocks Plugin v2ray
Link v2rayws:
$linkss3
Link v2raywss:
$linkss4
Link v2rayquic:
$linkss5
Link v2raygrpc:
$linkss6

# Config Shadowsocks Plugin xray
Link xrayws:
$linkss7
Link xraywss:
$linkss8
Link xraygrpctls:
$linkss9
Link xraygrpchttp:
$linkss11
Link xrayquic:
$linkss12

# Config Shadowsocks Plugin gost
Link gosttls:
$linkss13
Link gostmtls:
$linkss14
Link gostxtls:
$linkss15
Link gostgrpc:
$linkss16
Link gostws:
$linkss17
Link gostwss:
$linkss18
Link gostmws:
$linkss19
Link gostmwss:
$linkss20
Link gostquic:
$linkss21
Link gosth2:
$linkss22

END

service cron restart
clear
echo -e ""
echo -e "========-SHADOWSOCKS libev-========"
echo -e "IP/Host        : $MYIP"
echo -e "Domain         : $domain"
echo -e "Password       : $user"
echo -e "Method         : aes-256-cfb"
echo -e "Created        : $hariini"
echo -e "Expired        : $exp"
echo -e "Service Name   : GunService"
echo -e "PATH v2ray     : /v2ray"
echo -e "PATH gost      : /gost"
echo -e "PATH xray      : /xray"
echo -e "Info Websocket : Khusus Bug Cloudflare && wajib pake subdomain"
echo -e "========-obfs-plugin-========="
echo -e "OBFS TLS       : $tls"
echo -e "OBFS HTTP      : $http"
echo -e "========-v2ray-plugin-========"
echo -e "=Transport Mode-===-Port-====="
echo -e "Websocket TLS  : $v2rayawss"
echo -e "Websocket HTTP : $v2raybws"
echo -e "Quic TLS       : $v2rayquic"
echo -e "gRPC TLS       : $v2raygrpc"
echo -e "========-xray-plugin-========="
echo -e "=Transport Mode-===-Port-====="
echo -e "Websocket TLS  : $xrayawss"
echo -e "Websocket HTTP : $xraybws"
echo -e "gRPC HTTP      : $xraygrpchttp"
echo -e "gRPC TLS       : $xraygrpctls"
echo -e "Quic TLS       : $xrayquic"
echo -e "========-gost-plugin-========="
echo -e "=Transport Mode-===-Port-====="
echo -e "TLS            : $gosttls"
echo -e "MTLS           : $gostmtls"
echo -e "XTLS           : $gostxtls"
echo -e "gRPC TLS       : $gostgrpc"
echo -e "H2 TLS         : $gosth2"
echo -e "WSS TLS        : $gostawss"
echo -e "WS HTTP        : $gostbws"
echo -e "MWS            : $gostbmws"
echo -e "MWSS           : $gostamwss"
echo -e "Quic TLS       : [OFF]"
echo -e "========================="
echo -e "Link All Config: #://$MYIP:89/$user.json"
echo -e "Link Aplikasi v2ray-plugin: #://$MYIP:89/xray-plugin-universal.apk"
echo -e "Link Aplikasi gost-plugin: #://$MYIP:89/gost-plugin-x86.zip"
echo -e "Link Aplikasi gost-plugin: #://$MYIP:89/gost-plugin-arm.zip"
echo -e "Link Aplikasi xray-plugin: #://$MYIP:89/v2ray-plugin-universal.apk"
echo -e "ganti tanda # menjadi http"
echo -e "========================="
echo -e "Script Mod By SL"
