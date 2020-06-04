# strongswan


strongSwan is an Open Source IPsec-based VPN solution for Linux and other UNIX based operating systems implementing both the IKEv1 and IKEv2 key exchange protocols.

:warning: This docker image only support IKEv2!

===============================================================================

# docker-compose.yml



===============================================================================





# up and running

===============================================================================

docker-compose up -d

docker cp strongswan_strongswan_1:/etc/ipsec.d/client.mobileconfig .

docker cp strongswan_strongswan_1:/etc/ipsec.d/client.cert.p12 .

docker-compose logs -f

Mac/IOS: client.mobileconfig

Android: client.cert.p12
