###�������ù̶�ip����###

#########################################################
/etc/network/interfaces

iface eth0 inet static //����eth0ʹ��Ĭ�ϵľ�̬��ַ
address 192.168.77.133 //����eth0��IP��ַ
netmask 255.255.255.0 //����eth0����������
gateway 192.168.77.254 //���õ�ǰ������Ĭ������
#########################################################
:wq //����

service network restart

###�������ù̶�ip���ã�centos��###
#########################################################
/etc/sysconfig/network-scripts/

***BOOTPROTO=static
***IPADDR=192.168.1.149
***NETMASK=255.255.255.0
***GATEWAY=192.168.1.1
***ONBOOT=yes
#########################################################
:wq //����
service network restart


###���ù̶�DNS###
#########################################################
/etc/resolv.conf

nameserver 8.8.8.8
#########################################################
:wq //����

service network restart


###����SSH����###
#########################################################
vim /etc/ssh/sshd_config

PermitRootLogin yes     #�޸�����
    
PasswordAuthentication yes    #�޸�����
#########################################################
:wq //����

service ssh start

###���ø���Դ���ٷ�����Դ��###
##################################################################
vim (leafpad) /etc/apt/sources.list

#�ٷ�Դ
deb http://http.kali.org/kali kali-rolling main non-free contrib
deb-src http://http.kali.org/kali kali-rolling main non-free contrib

##################################################################
#�пƴ�
deb http://mirrors.ustc.edu.cn/kali kali-rolling main non-free contrib
deb-src http://mirrors.ustc.edu.cn/kali kali-rolling main non-free contrib
 
#������
deb http://mirrors.aliyun.com/kali kali-rolling main non-free contrib
deb-src http://mirrors.aliyun.com/kali kali-rolling main non-free contrib

? apt-get update 
? apt-get upgrade 
? apt-get dis-upgrade

###��װ��Ҫ�Ļ�������###

#####################################################################
apt-get install kali-linux-all smplayer ibus ibus-pinyin flashplugin-nonfree gdebi amule 
qbittorrent geany meld stardict ttf-wqy-microhei kchmviewer resolvconf python-dev 
python-greenlet python-gevent python-vte python-openssl python-crypto python
appindicator python-pip libnss3-tools freemind netspeed libncurses5-dev mtr filezilla 
filezillacommon chromium monodevelop mono-gmcs -y

#####################################################################

######��װ���˰�Lalin��һ��ΪKali���ɸ��ְ�ȫ���ߵ����˹��߰�######

#####################################################################
git clone https://github.com/Screetsec/LALIN.git
cd LALIN/
sudo chmod +x Lalin.sh
sudo ./Lalin.sh

#####################################################################











