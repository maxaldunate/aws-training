## Lab (2/30): CREATE YOUR FIRST AMAZON S3 BUCKET

Differents level metadats to http

## Lab (3/30): CREATE YOUR FIRST AMAZON EC2 INSTANCE (LINUX)
https://cloudacademy.com/amazon-web-services/labs/create-your-first-amazon-ec2-instance-1  

`$ ssh -i /path/to/your/KeyPair.pem user@server-ip`  
`$ chmod 600  /home/youruser/keypair.pem`  
PuTTY. IP+SSH+Auth+Load Converted pem to ppk  

**Instance Metadata special IP**  
```
$ curl -w "\n" http://169.254.169.254/latest/meta-data/
$ curl -w "\n" http://169.254.169.254/latest/meta-data/security-groups
$ curl -w "\n" http://169.254.169.254/latest/meta-data/ami-id
$ curl -w "\n" http://169.254.169.254/latest/meta-data/hostname
$ curl -w "\n" http://169.254.169.254/latest/meta-data/instance-id
$ curl -w "\n" http://169.254.169.254/latest/meta-data/instance-type
```

Get the public SSH key  
`curl -w "\n" http://169.254.169.254/latest/meta-data/public-keys/0/openssh-key`


## Lab (5/30): MANAGING INSTANCE VOLUMES USING EBS

Create ESB 16GB "Data Disk"

mounted disks  
`$  df -aTh`  
to list unmounted partitions  
`$ lsblk`  
to make file system  
`$ sudo mkfs -t ext4 /dev/NAME_OF_YOUR_DEVICE`  
`$ sudo mkfs -t ext4 /dev/xvdf`  
make entry point  
`$ sudo mkdir /mnt/ebs-store`  
mount  
`$ sudo mount /dev/NAME_OF_YOUR_DEVICE /mnt/ebs-store`  
`$ sudo mount /dev/xvdf /mnt/ebs-store`  
mount this volume on boot  
`$ sudo nano /etc/fstab`  
append line at the end  
`/dev/NAME_OF_YOUR_DEVICE /mnt/ebs-store ext4 defaults,noatime 1 2`  
`/dev/xvdf /mnt/ebs-store ext4 defaults,noatime 1 2`  
`Ctrl+O & Ctrl+X`  
unmount  
`$ sudo umount -d path_to_device/device_name`


Out of the lab  
Create the New Partition
`$ sudo parted -a opt /dev/sda mkpart primary ext4 0% 100%`  
Create a Filesystem on the New Partition  
`$ sudo mkfs.ext4 -L datapartition /dev/sda1`  


## Lab (6/30): CREATE AN EBS-BACKED LINUX AMI

Install nginx
```
sudo yum install nginx
sudo service nginx star
```
Nginx repo  
http://nginx.org/packages/centos/7/noarch/RPMS/nginx-release-centos-7-0.el7.ngx.noarch.rpm   

Create an Image from an instance  
Make it public!  


## Lab (8/30): CREATING YOUR FIRST CLASSIC LOAD BALANCER

Current infrastructure that was already deployed
![infrastructure Image](https://github.com/maxaldunate/aws-training/blob/master/certified-developer-foundations-course/labs/CREATING-YOUR-FIRST-CLASSIC-LOAD-BALANCER-01.png)








## Ideas
- Crear una maquina linux liviana en virtual box
- Redifinir targets, milestones,tasks,  etc
- Crear Wordpress site not in lightsail
- Async... marking an state in each entity. Like grid 'creating ...'
- SES. just to send. How to implemente 1&1 email on domain
