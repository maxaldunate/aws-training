# Question Points

| Question/Subject | Response |
| --- | ---: |
| min size ESB | 1 GiB |
| dedicate hosting state transitions | dedicated & host & vs |
| RDS failover | failure primary, network primary & loss AZ primary |
| VPC peering needs | +route in RT with your VPC (private IP) |
| ec2 inst types | mem & iops |
| read replicas with MultiAZ | not possible |
| max retention period for RDS automated backups | 35 days |
| cross-region replication s3 | versioning enabled on both |
| automate rds backups | automate snapshots & automated backups |
| delete incomplete multipart uploads s3 | s3 lifecycle policies |
| trusted adv | YES SG + ports, MFA on Root.  |
| trusted adv | NO antivirus on ec2, nor vulnerabilities on VPC |
| IAM policies deny access to root | NO |
| read replicas s/a | async |
| multi az s/a | sync |
| min size s3 object | 0 bytes |
| VPN conn | -vpc hw vpn access -on-prem CG -VPG public IP |
| aws support | enter., business, devs + basic free level |
| aws sms concurrent vmware vms migrated | 50 |
| record configuration changes | aws config |
| cloudwatch defaul metric for rds | memory usage |
| write to edge location | true |
| use ms win server license | dedicated host is required |
| vpc peering not support | edge-to-edge routing |
| Elastic IP addresses [EIP] | max 5 |
| EBS multiple physical volumes in the same AZ | true |
| RDS enables autom backups with 1 day ret.p. | by default  |
| max s3 buckets by default | 100 |
| who delete a version of s3 object | just the owner |
| min & max size EBS SSD | 1 GiB to 16 TiB |
| S3 supports redirects | Yes |
| aws services supporting stateless web servers | RDS+ECache+Dynamo. No ELB |
| Read Replicas not supported engines | Oracle & SQL Server |
| Glacier first-byte latency | 3-5 hours |
| Securely to/from S3 | Via HTTP or SSL endpoints using HTTPS protocol |
| RDS upgrade to a larger instance go offline | Yes, for a couple of minutes |
| Condition to IAM policies allowing access by Tags? | yes |

The End
