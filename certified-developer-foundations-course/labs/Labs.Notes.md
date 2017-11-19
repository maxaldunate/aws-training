## Lab (2/30): CREATE YOUR FIRST AMAZON S3 BUCKET

Differents level metadats to http

## Lab (3/30): CREATE YOUR FIRST AMAZON EC2 INSTANCE (LINUX)
https://cloudacademy.com/amazon-web-services/labs/create-your-first-amazon-ec2-instance-1  


´$ ssh -i /path/to/your/KeyPair.pem user@server-ip´
´$ chmod 600  /home/youruser/keypair.pem´
PuTTY. IP+SSH+Auth+Load Converted pem to ppk

**Instance Metadata special IP**  
´´´
$ curl -w "\n" http://169.254.169.254/latest/meta-data/´
$ curl -w "\n" http://169.254.169.254/latest/meta-data/security-groups
$ curl -w "\n" http://169.254.169.254/latest/meta-data/ami-id
$ curl -w "\n" http://169.254.169.254/latest/meta-data/hostname
$ curl -w "\n" http://169.254.169.254/latest/meta-data/instance-id
$ curl -w "\n" http://169.254.169.254/latest/meta-data/instance-type
´´´

Get the public SSH key  
´curl -w "\n" http://169.254.169.254/latest/meta-data/public-keys/0/openssh-key´





## Ideas
- Crear una maquina linux liviana en virtual box
- Redifinir targets, milestones,tasks,  etc
- Crear Wordpress site not in lightsail
- 
