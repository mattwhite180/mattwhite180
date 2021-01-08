# Control VirtualBox with VSCode

## In virtualbox...
* settings --> network --> advanced --> NAT port forwarding
* fill out chart

name = SSH

protocol = TCP

HostIp = 127.0.0.1

HostPort = 2522

GuestIP = 10.0.2.15

GuestPort = 22

* Login to VMBox
```
ssh -p 2522 <login>@127.0.0.1
```
