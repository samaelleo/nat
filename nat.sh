sudo iptables -t nat -D PREROUTING 1
sudo iptables -t nat -D PREROUTING 1
sudo iptables -t nat -D POSTROUTING 1
sysctl net.ipv4.ip_forward=1
iptables -t nat -A PREROUTING -p tcp --dport 22 -j DNAT --to-destination IR
iptables -t nat -A PREROUTING -j DNAT --to-destination NON-IR
iptables -t nat -A POSTROUTING -j MASQUERADE
sudo iptables -t nat -v -L -n --line-number

