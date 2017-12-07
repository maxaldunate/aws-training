### Instance Metadata
```
$ curl -w "\n" http://169.254.169.254/latest/meta-data/
$ curl -w "\n" http://169.254.169.254/latest/meta-data/public-ipv4

$ curl -w "\n" http://169.254.169.254/latest/meta-data/security-groups
$ curl -w "\n" http://169.254.169.254/latest/meta-data/ami-id
$ curl -w "\n" http://169.254.169.254/latest/meta-data/hostname
$ curl -w "\n" http://169.254.169.254/latest/meta-data/instance-id
$ curl -w "\n" http://169.254.169.254/latest/meta-data/instance-type
$ curl -w "\n" http://169.254.169.254/latest/meta-data/public-keys/0/openssh-key
```


