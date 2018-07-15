# Question Points

### From ACG

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

### Practice Test 4 : February 2018 : 111 Questions
[Udemy](https://www.udemy.com/aws-certified-solutions-architect-2018-practice-questions/learn/v4/t/quiz/4403428/results/97667158)

| Question | Response |
| --- | ---: |
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

### AWS Certified Solutions Architect Associate Practice Test 1 - Resultados
[Udemy](https://www.udemy.com/aws-certified-solutions-architect-associate-amazon-practice-exams/learn/v4/t/quiz/4394970/test)

| Question | Response |
| --- | ---: |
| WTF DynamoDB Accelerator (DAX)? | Fully managed, in-memory cache for DynamoDB. Reduces DynamoDB response times from milliseconds to microseconds |
| AWS Lambda Limits. Ephemeral disk capacity? | 512 MB |
| AWS Lambda Limits. Maximum execution duration per request? | 300 seconds (5 minutes) |
| AWS Lambda Limits. Number of file descriptors | 1.024 |
| EC2 retains Elastic IP address on EC2-classic? | Nop, instead of EC2-VPC |
| How to encrypt a non encrypted ESB? | Create a new encrypted and move data! |
| How many types of block devices? | Instance store volumes &  EBS volumes |
| How to load balance with the need of a static IP address hard-coded? | Script check health & switch elastic IP address to a standby EC2 instance  |
| How you will implement SSO feature to existing users using on-premise web apps? | STS and SAML |
| Is ElastiCache a fully managed service?  | Yes |
| IAM two types pf policy? | Identity-based & Resource-based|
| Count hosts for x.x.x.x/29 ?  | 8 |
| Same Region, no cost of trasnfering data from EC2 to ...? | S3, Glacier, DynamoDB, SES, SQS or SimpleDB  |
| SNS destinations? | HTTP/S, Email+Json, SQS & SMS  |
| Is it possible to have autoscaling without using an ELB? | Yes |

### AWS Certified Solutions Architect Associate Practice Test 2
[Udemy](https://www.udemy.com/aws-certified-solutions-architect-associate-amazon-practice-exams/learn/v4/t/quiz/4394972/start)

| Question | Response |
| --- | ---: |
| Four valid use cases for Amazon DynamoDB? | Users preferences, Web sessions, json docs & S3 objs. metadata   |
| WTF Aws IoT Core?  |   |
| Route53 pointing an ELB. Which record?  |   |
| Which two services natively encrypts data at rest? | Storage Gateway & Glacier |
| **Perfect Forward Secrecy** offers SSL/TLS cipher for which two services? | CloudFront & ELB |
| What occurs on Route53 on a rds multi-az failover?  | The CNAME is switched to standby instace |
| EC2 20 instance limits by region is soft?  | Yes |
| site-to-site VPN connection from on-premise to VPC?  | Static IP of the customer GW external interface for the on-prem network |
| CloudWatch alarm actions, Can stop, terminate, reboot, or recover EC2 instances? | yes |

### Practice Test 5 : February 2018 : 111 Questions
[Udemy](https://www.udemy.com/aws-certified-solutions-architect-2018-practice-questions/learn/v4/t/quiz/4403430/test)

| Question | Response |
| --- | ---: |
| Initial 8 TB and the ddbb will grow by 8 GB every day, Aurora?  | No, Redshift |
| Redshift free storage snapshots? | equal to the storage capacity of your cluster until you delete the cluster |
| Common Use Cases in Amazon ECS? | Microservices & batch jobs |
| Architecture to ensure ddbb write operations not able to handle? | SQS to que ssbb writes |
| storage volumes up to XX TiB in size and attach to them as iSCSI devices from your on-premises application servers | 32 TiB |
| Can one use the Elastic Beanstalk service to host Docker containers? | yes |
| Can Redshift server as tipical RDBMS OLTP? | it is not designed for these workloads |
| Stack based model with different stacks for Dev and production envs? | Aws Opsworks, layers & envs |
| S3 > 300 Get/second or > 100 Put/List/Del requests/second | add a hash prefix key |
| ElastiCache in front of a DDBB?  | Yes, [Dastabase Caching](https://aws.amazon.com/caching/database-caching/) |
| ECS Fargate Launch Type is fully managed? | Yes |
| IAM Policies can assure access through Tags? | Yes |
| Can you decide to encrypt Cloudtrail logs? | Nop, they are encrypted by default |
| If a backup of On-premise data is required, the most efficient way would be to make use of Storage gateway Cached Volumes  |   |
| Auto Scaling allows you to suspend and then resume one or more of the Auto Scaling processes in your Auto Scaling group | usefull to investigate a configuration problem |

### Practice Test 6 : February 2018 : 111 Questions
[Udemy](https://www.udemy.com/aws-certified-solutions-architect-2018-practice-questions/learn/v4/t/quiz/4403432/start)

| Question | Response |
| --- | ---: |
| Blue/Green Deployment. Which Route53 routing policy? | Weighted |
| ECR - Elastic Container Registry exists? | yes |
| Is possible DR Backup & Restore with CloudFormation? | Yes |
| How collect and process the log files generated from the IIS Servers on EC2s? | S3 for store logs & EMR to process it |
| T/F. At higher usage, the price for CloudFront data transfer is lower than the price for Amazon S3 data transfer | True |
| T/F. Kinesis stream data records ar accesible only 72 hs | False, 24 hours by default, up to 168 hours |
| T/F. Redshift is column-oriented | True |
| Can you run Hadoop, Apache Spark, HBase, Presto, and Flink EMR? | Yes, is a big data processing system |
| T/F. Normally DynamoDB is scalable, but looking for a cost effective solution SQS is the best option | True |
| For what you use an Origin Access Identity (OAI) | To Restricting Access to Amazon S3 Content |
| On Redshift can you disable automated snapshots? | Yes, and reduce the costs |
| Can use Elastic Beanstalk to deploy Docker constainers? | Yes |
| EMR for proceesing images files? | Nop, log files |
| Is CloudSearch a search application? | Yes |
| T/F. When you want to automate deployment, the automatic choice is Cloudformation | True |
| Autoscaling will rerspect the soft limit of 20 EC2 instances? | Yes |
| What you use if you need low-latency access to your entire dataset | Storage gw stored volume |
| Can Aws Config get a snapshot of the current configuration of the resources in your AWS Account  | Yes |
| Are just X2 type reserved instances available for Multi-AZ? | No, all instances types |
| With EMR you can use OnDemand or Reserved instance only | Nop, you can use Spot & Dedicated too |
| Service to monitor all traffic flowing from the EC2 Instances | VPC Flow Logs |
| T/F You can enable cross region snapshots for Redshift Cluster | True |

The End