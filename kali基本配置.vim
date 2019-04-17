###网卡配置固定ip配置###

#########################################################
/etc/network/interfaces

iface eth0 inet static //配置eth0使用默认的静态地址
address 192.168.77.133 //设置eth0的IP地址
netmask 255.255.255.0 //配置eth0的子网掩码
gateway 192.168.77.254 //配置当前主机的默认网关
#########################################################
:wq //保存

service network restart

###网卡配置固定ip配置（centos）###
#########################################################
/etc/sysconfig/network-scripts/

***BOOTPROTO=static
***IPADDR=192.168.1.149
***NETMASK=255.255.255.0
***GATEWAY=192.168.1.1
***ONBOOT=yes
#########################################################
:wq //保存
service network restart


###配置固定DNS###
#########################################################
/etc/resolv.conf

nameserver 8.8.8.8
#########################################################
:wq //保存

service network restart


###开启SSH服务###
#########################################################
vim /etc/ssh/sshd_config

PermitRootLogin yes     #修改内容
    
PasswordAuthentication yes    #修改内容
#########################################################
:wq //保存

service ssh start

###配置更新源（官方更新源）###
##################################################################
vim (leafpad) /etc/apt/sources.list

#官方源
deb http://http.kali.org/kali kali-rolling main non-free contrib
deb-src http://http.kali.org/kali kali-rolling main non-free contrib

##################################################################
#中科大
deb http://mirrors.ustc.edu.cn/kali kali-rolling main non-free contrib
deb-src http://mirrors.ustc.edu.cn/kali kali-rolling main non-free contrib
 
#阿里云
deb http://mirrors.aliyun.com/kali kali-rolling main non-free contrib
deb-src http://mirrors.aliyun.com/kali kali-rolling main non-free contrib

? apt-get update 
? apt-get upgrade 
? apt-get dis-upgrade

###安装需要的基本依赖###

#####################################################################
apt-get install kali-linux-all smplayer ibus ibus-pinyin flashplugin-nonfree gdebi amule 
qbittorrent geany meld stardict ttf-wqy-microhei kchmviewer resolvconf python-dev 
python-greenlet python-gevent python-vte python-openssl python-crypto python
appindicator python-pip libnss3-tools freemind netspeed libncurses5-dev mtr filezilla 
filezillacommon chromium monodevelop mono-gmcs -y

#####################################################################

######安装懒人包Lalin：一款为Kali集成各种安全工具的懒人工具包######

#####################################################################
git clone https://github.com/Screetsec/LALIN.git
cd LALIN/
sudo chmod +x Lalin.sh
sudo ./Lalin.sh

#####################################################################











