# Question Points

| Question | Response |
| --- | ---: |
| dedicate hosting state transitions? | dedicated & host & vs |
| When RDS failover? | failure primary, network primary & loss AZ primary |
| VPC peering needs for priveta IPs? | +route in RT with your VPC (private IP) |
| read replicas with MultiAZ? | not possible |
| automate rds backups | automate snapshots & automated backups |
| max retention period for RDS automated backups | 35 days |
| cross-region replication s3 versioning? | versioning enabled on both |
| where delete incomplete multipart uploads s3? | s3 lifecycle policies |
| trusted adv cover | YES SG + ports, MFA on Root.  |
| trusted adv no cover | NO antivirus on ec2, nor vulnerabilities on VPC |
| IAM policies deny access to root? | NO |
| read replicas sync/async? | async |
| multi az sync/async? | sync |
| min size s3 object? | 0 bytes |
| VPN conn | -vpc hw vpn access -on-prem CG -VPG public IP |
| aws support levels?| enterprise, business & devs + basic free level |
| max aws sms concurrent vmware vms migrated | 50 |
| service for record configuration changes? | Aws Config |
| CWatch defaul metric for RDS? | memory usage |
| is it possiblr to write to an edge location? | yes |
| use ms win server license host req?  | dedicated host is required |
| vpc peering not support | edge-to-edge routing |
| Max Elastic IP addresses? | max 5 |
| EBS multiple physical volumes in the same AZ | true |
| How retention p. RDS autom backups by default? | 1 day  |
| max s3 buckets by default? | 100 |
| who delete a version of s3 object | just the owner |
| min & max size EBS SSD? | 1 GiB to 16 TiB |
| S3 supports redirects? | Yes |
| aws services supporting stateless web servers? | RDS+ECache+Dynamo. No ELB |
| Read Replicas not supported engines? | Oracle & SQL Server |
| Glacier first-byte latency? | 3-5 hours |
| Securely to/from S3? | Via HTTP or SSL endpoints using HTTPS protocol |
| RDS upgrade to a larger instance go offline? | Yes, for a couple of minutes |
| Condition to IAM policies allowing access by Tags? | yes |
| % uptime SLA for EC2? | 99.95% |
| How long does CloudWatch store the metrics by default? | 15 months |
| Glacier use S3 or Glacier API ? | S3 |
| Whats mean SSE-C, SSE-S3 & SSE-KMS ? | Custom, S3 & Aws KMS  |
| DynamoDB replicated across regions or AZs? | AZs |
