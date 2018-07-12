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
| CWatch defaul metric for RDS? | The number of current connections to the database |
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


Practice Test 4 : February 2018 : 111 Questions
https://www.udemy.com/aws-certified-solutions-architect-2018-practice-questions/learn/v4/t/quiz/4403428/results/97667158

| CloudTrail turn on a trail across all regions even future regions | yes |
| iSCI device storage gateway: Cached or Stored volume? | Stored |
| Is possible to use Route 53 targetting an S3 bucket? | yes, putting de NS record |
| Can you put ElastiCache in front a database? | yes, to cache queries |
| Can you put CloudFront in front a database? | no, is for content |
| Aws Service to analyze a customer’s clickstream data on a website? | Kinesis |
| Kinesis Data Firehose can capture, transform, and load streaming data into ...? |  S3, Redshift, Elasticsearch and Splunk |
| give temporary access to users for S3 buckets ? | Pre-signed URL’s |
| is possible encrypt EBS using KMS service ? | yes |
| Cloudwatch Events | Track and Respond to Changes |
| Aws Service to store session data ? | ElastiCache & DynamoDB |
| What can be done to ensure you can access the Redshift Cluster? | change security group |
| Aurora Replicas lags usally less than ? | 100 milliseconds  |
| Elastic Beanstalk for long runnning worker process?  | yes |
| Elastic Beanstalk for enterprise data warehouse? | no |
| Amazon Glacier Vault Lock allows you to easily deploy and enforce compliance controls on individual Glacier vaults via a lockable policy |  |
| scaling up and down multiple times in the same hour | alarm period triggers & encrease AS group cool down timers |
| How should the architect maximize Amazon S3 performance? | hash keys or random strings to prefix the object name |
| avoid serving the files from EC2 Instances every time ? | use CloudFront |
| Redshift in a private subnet needs a NAT gateway to access S3 ? | yes |
| isolate one task for other ona ECS ? | IAM roles for Tasks |
| Aws Service for summarized by column millions of rows? | Redshift |
| Redshift can also asynchronously replicate your snapshots to S3 in another region for disaster recovery |  |
| File System for an Amazon EFS ? | NPI |
| nginx servers can be provisioned via the Elastic Beanstalk?  | yes |
| VPC Flow Logs is a feature that enables you to capture information about the IP traffic going to and from network interfaces in your VPC |  |
| Is EFS a block level storage? | No, is a file level storage |
| EBS for large throughput ? | USe Throughput Optimized, no IOPS  |
| images to be uploaded to S3 froma  mobile client ? | Pre-signed URL’s |
| Use Route53 health checks to monitor the endpoint accesible through internet? | yes |
| Internet gateway vs NAT gateway |  10 Gbps |
| How to log CloudFront usage data? | Enable CloudFront access logs |
| Autoscaling for DR (disaster R) | Nop, need another region ¿? |
| How to ensured that all traffic from/to Redshift no go through the Internet | Enable Redshift Enhanced VPC routing  |
| How does Elastic Beanstalk apply updates? | down instance in the maintenence window |
| Why do you make subnets? | managing large number of hosts |
|  |  |




https://www.udemy.com/aws-certified-solutions-architect-associate-amazon-practice-exams/learn/v4/t/quiz/4394970/test


|  |  |
|  |  |
|  |  |
|  |  |
|  |  |
|  |  |
