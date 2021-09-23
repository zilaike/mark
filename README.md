# strongswan


strongSwan is an Open Source IPsec-based VPN solution for Linux and other UNIX based operating systems implementing both the IKEv1 and IKEv2 key exchange protocols.

:warning: This docker image only support IKEv2!

===============================================================================

# docker-compose.yml

nano docker-compose.yml

Change the address (VPN_DOMAIN  and VPN_NETWORK ) to your own external network address       
    
===============================================================================





# up and running

===============================================================================

docker-compose up -d

docker cp vimagick_vpn_strongswan_1:/etc/ipsec.d/client.mobileconfig .

docker cp vimagick_vpn_strongswan_1:/etc/ipsec.d/client.cert.p12 .

docker-compose logs -f

Mac/IOS: client.mobileconfig

Android: client.cert.p12


 
