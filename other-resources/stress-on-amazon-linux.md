To Stress on Amazon Linux

```bash
#!/bin/bash
#Install and start Apache web server
yum install -y httpd24 php56
service httpd start
touch /var/www/html/index.html
chmod 644 /var/www/html/index.html
#Install CPU stress test tool
sudo yum install stress

$ which stress
	/usr/bin/stress
Run stress to eat up CPU cycles for five minutes (-t 5m option):
$ stress -c 2 -i 1 -m 1 --vm-bytes 128M -t 5m
```
