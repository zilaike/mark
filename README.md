
===============================================================================
# strongswan


strongSwan is an Open Source IPsec-based VPN solution for Linux and other UNIX based operating systems implementing both the IKEv1 and IKEv2 key exchange protocols.

:warning: This docker image only support IKEv2!

===============================================================================

# Dockerfile 构建 自己的镜像

docker build -t zilaike/strongswan ./


# docker-compose.yml

nano docker-compose.yml

change the address (VPN_DOMAIN  and VPN_NETWORK ) to your own external network address      
change  VPN_P12_PASSWORD to your own password
    
===============================================================================





# up and running

===============================================================================

docker-compose up -d

docker cp vimagick_vpn_strongswan_1:/etc/ipsec.d/client.mobileconfig .

docker cp vimagick_vpn_strongswan_1:/etc/ipsec.d/client.cert.p12 .

docker-compose logs -f

Mac/IOS: client.mobileconfig

Android: client.cert.p12       (VPN_P12_PASSWORD is your p12 password eg. secret)
