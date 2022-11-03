#!/bin/bash

domain = "mydomain"
ipdns = "192.168.0.40"
ipnet = "192.168.0.0/24"

echo "Please name your local domain (e.g. for homelab.local just type homelab):"
read domain

echo "What is the IP address of this DNS server?"
read ipdns

echo "What is the network address including CIDR block (e.g 192.168.0.0/24)?"
read ipnet

sudo apt-get update
sudo apt-get install bind9 bind9utils bind9-doc dnsutils -y

# Apply basic configurations

# The below config is for a network 192.168.1.0/24, adjust according to your network configuration before executing

# Update named.conf.options
cat <<EOT >> /etc/bind/named.conf.options
options {
        directory "/var/cache/bind";
        auth-nxdomain no;    # conform to RFC1035
     // listen-on-v6 { any; };
        listen-on port 53 { localhost; $ipnet; };
        allow-query { localhost; $ipnet; };
        forwarders { 8.8.8.8; };
        recursion yes;
        };
EOT

# Update named.conf.local
cat <<EOT >> /etc/bind/named.conf.local
zone    "$domain.local"   {
        type master;
        file    "/etc/bind/forward.$domain.local";
 };

zone   "1.168.192.in-addr.arpa"        {
       type master;
       file    "/etc/bind/reverse.$domain.local";
 };
EOT

# Create forward lookup zone file
sudo touch /etc/bind/forward.$domain.local
cat <<EOT >> /etc/bind/forward.$domain.local
\$TTL    604800

@       IN      SOA     primary.$domain.local. root.primary.$domain.local. (
                              6         ; Serial
                         604820         ; Refresh
                          86600         ; Retry
                        2419600         ; Expire
                         604600 )       ; Negative Cache TTL

;Name Server Information
@       IN      NS      primary.$domain.local.

;IP address of Your Domain Name Server(DNS)
primary IN       A      $ipdns

;Mail Server MX (Mail exchanger) Record
$domain.local. IN  MX  10  mail.$domain.local.

;A Record for Host names
www     IN       A       192.168.1.50
mail    IN       A       192.168.1.60

;CNAME Record
ftp     IN      CNAME    www.$domain.local.
EOT

# Create reverse lookup zone file
sudo touch /etc/bind/reverse.$domain.local
cat <<EOT >> /etc/bind/reverse.$domain.local
\$TTL    604800
@       IN      SOA     $domain.local. root.$domain.local. (
                             21         ; Serial
                         604820         ; Refresh
                          864500        ; Retry
                        2419270         ; Expire
                         604880 )       ; Negative Cache TTL

;Your Name Server Info
@       IN      NS      primary.$domain.local.
primary IN      A       $ipdns

;Reverse Lookup for Your DNS Server
40      IN      PTR     primary.$domain.local.

;PTR Record IP address to HostName
50      IN      PTR     www.$domain.local.
60      IN      PTR     mail.$domain.local.
EOT

# Apply changes
sudo systemctl restart bind9
sudo systemctl enable bind9
sudo ufw allow 53

