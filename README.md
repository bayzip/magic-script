# magic-script
Simple scripts that will make it easier for DevOps

## Installation Script
This script tested and worked on Centos. First, you need to make sure that curl has been installed on your server. After that, you can run this simple command

```
curl -O https://raw.githubusercontent.com/bayuadinh/magic-script/master/magicstart.sh
bash magicstart.sh
```

If you have been installed and want to update, just simply run the command in above and they will update script :)

## Using Script
### Database (Add, Backup, and Restore)
#### Add Database
```
magic-database add <database> <user.database> <pass.user.database>
ex: 
magic-database add wordpress user.wordpress pass.user.wordpress
```
#### Backup Database
```
magic-database backup <database>
ex: 
magic-database backup wordpress
```
#### Restore Database
```
magic-database restore <database> <dataase.file>
ex: 
magic-database restore wordpress wordpress.sql
```
### Firewall (Add, Delleted, Check)
#### Add Firewall Port
```
magic-firewall add port <port.numerber> <tcp/udp>
```
#### Add Firewall Service
```
magic-firewall add service <service.name>
```
#### Delleted Firewall Port
```
magic-firewall dell port <port.numerber> <tcp/udp>
```
#### Delleted Firewall Service
```
magic-firewall dell service <service.name>
```
#### Check Firewall All
```
magic-firewall check all
```
#### Check Firewall Port
```
magic-firewall check port <port.numerber> <tcp/udp>
```
#### Check Firewall Service
```
magic-firewall check service <service.name>
```