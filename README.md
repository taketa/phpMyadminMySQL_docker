to build docker-compose file  
**docker-compose up --build**

for clear docker images, containers and others...  
**./clear.sh**

remove network  
**docker network rm <netName>**

remove mysql
```
sudo apt-get purge mysql* -V
sudo rm -rv /var/lib/mysql
sudo rm -rv /var/log/mysql*
sudo rm -rv /etc/mysql*
sudo apt-get autoremove
sudo apt-get autoclean
```

