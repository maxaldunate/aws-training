<a id="top" />

# SAA-C01 - Released February 2018
AWS Certified Solutions Architect Associate

### Content
* [Exam Approaching](#exam-approaching)
* [AWS Recommended Resources](#aws-recommended-resources)
* [Question Points](#question-points)
* [Big Summary](#big-summary)

### Exam Approaching

* [AWS Manin Site](https://aws.amazon.com/certification/certified-solutions-architect-associate/)
* [Exam Guide](https://d1.awsstatic.com/training-and-certification/docs-sa-assoc/AWS_Certified_Solutions_Architect_Associate_Feb_2018_%20Exam_Guide_v1.5.2.pdf)
* [Sample Exam Questions](https://d1.awsstatic.com/training-and-certification/docs-sa-assoc/AWS_Certified_Solutions%20Architect_Associate_Feb_2018_Sample%20Questions_v1.0.pdf)
* Exam Description
  - Multiple-Choice (1 of 4) & Multiple-response (2 of 5)
  - 100-1000 with a minimum passing score of 720
  - 65 questions in 130 Minutes (2" per question)
  - Practice Exam Fee 20 usd
  - Exam fee 150 usd
  - Domains
    * 1 34% Design Resilient Archs
    * 2 24% Define Performant Archs
    * 3 26% Specify Secure Apps & Archs
    * 4 10% Design Cost-Optimized Archs
    * 5  6% Define Operationally Excellent Arhcs

### AWS Recommended Resources

- Recommended for SA Associate - 2018 
  * [AWS Well-Architected](https://aws.amazon.com/architecture/well-architected/)
  * [Architecting for the Cloud - AWS Best Practices - February 2016](https://d0.awsstatic.com/whitepapers/AWS_Cloud_Best_Practices.pdf)
- Recommended for SA Associate
  * [Overview of Amazon Web Services - April 2017](https://d1.awsstatic.com/whitepapers/aws-overview.pdf)
  * [Overview of Security Processes - June 2016](http://d0.awsstatic.com/whitepapers/Security/AWS%20Security%20Whitepaper.pdf)
  * [Amazon Web Services: Risk and Compliance - May 2017](https://d1.awsstatic.com/whitepapers/compliance/AWS_Risk_and_Compliance_Whitepaper.pdf)
  * [AWS Storage Services Overview - A Look at Storage Services Offered by AWS - Dec 2016](https://d1.awsstatic.com/whitepapers/Storage/AWS%20Storage%20Services%20Whitepaper-v9.pdf)
- Others Recommended
  * [FAQs Summary](https://github.com/escamarla/aws-training/blob/master/exam-preparation/faqs/aws-faqs-summary.md)
  * [White papers recommended by ACG](https://github.com/escamarla/aws-training/blob/master/exam-preparation/docs-md/docs-to-read.md/#wp)
- AWS Playlist. https://www.youtube.com/user/AmazonWebServices/
  * [AWS re:Invent 2017: A Field Guide to Monitoring on the AWS Cloud: From Lift and Shif (DEV209)](https://www.youtube.com/watch?v=HjhqjG3YWFI&list=PLhrlKZpdzukf34vxrO18JKjMLT_5tGNJi)
  * [AWS re:Invent 2017: The Open Guide to AWS: A GitHub-Based Resource for Practitioners (DVC202)](https://www.youtube.com/watch?v=6LFE4IijMXw&list=PLhrlKZpdzukcXiSxwm8Q-A14n17gZj_kT)
  * [AWS re:Invent 2017: A story of Netflix and AB Testing in the User Interface using Dy (DAT308)](https://www.youtube.com/watch?v=k8PTetgYzLA&list=PLhrlKZpdzuketnzOgclLSIXCacM84ryFX)
  * [AWS re:Invent 2017: Amazon EC2 Foundations (CMP203)](https://www.youtube.com/watch?v=97Wi7V1wLYA&list=PLhrlKZpdzukeiPpqZ3C7r-6DDqr0pWTow)

<p align="right"><a href="#top">Top</a></p>

### Question Points

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
| VPN conn | 1.vpc w/hardware vpn access 2.on-premise CG & 3.VPG w/public IP |
| aws support | enterprise, business, developer plus the basic free level |
| aws sms concurrent vmware vms migrated | 50 |
| record configuration changes | aws config |
| cloudwatch defaul metric for rds | memory usage |
| write to edge location | true |
| use ms win server license | dedicated host is required |
| vpc peering not support | edge-to-edge routing |
| Elastic IP addresses [EIP] | max 5 |
| EBS redundant multiple physical volumes in the same AZ | true |
| RDS enables autom backups with 1 day retention period | by default  |
| max s3 buckets by default 100 |
| who delete a version of s3 object | just the owner |


<p align="right"><a href="#top">Top</a></p>

### Big Summary

Summary
---

> Compute 
  EC2
  Elastic Beanstalk
  Lightsail
  ECS
  Lambda
  Batch
> Storage 
  S3
  EFS
  Glacier
  Snowball
  Storage Gateway
> Databases 
  RDS
  DynamoDB
  Elasticache
  Redshift
> Migration 
  AWS Migration Hub
  Application Discovery Service
  Database Migration Service
  Server Migration Service
  Snowball
> Networking & Content Delivery 
  VPC
  CloudFront
  Route53
  API Gateway
  Direct Connect
> Developer Tools 
  CodeStar
  CodeCommit
  CodeBuild
  CodeDeploy
  CodePipeline
  X-Ray
  Cloud9
> Management Tools  
  CloudWatch
  CloudFormation
  CloudTrail
  AWS Config
  OpsWorks
  Service Catalog
  System Manager
  Trusted Advisor
  Managed Services
> Media Services  
  Elastic Transcoder
  MediaConvert
  MediaLive
  MediaPackage
  MediaStore
  MediaTailor
> Machine Learning  
  SageMaker
  Comprehend
  DeepLens
  Lex
  Machine Learning
  Polly
  Rekognition
  Amazon Trasnlate
> Analytics 
  Athena
  EMR
  CloudSearch
  ElasticSearch Service
  Kinesis
  Kinesis Video Streams
  QuickSight
  Data Pipeline
  Glue
> Security & Identity & Compliance  
  IAM
  Cognito
  GuardDuty
  Inspector
  Macie
  Certificate Manager
  CloudHSM
  Directory Service
  WAF
  Shield
  Artifact
> Application Integration 
  Step Functions
  Amazon MQ
  SNS
  SQS
  SWF
> Customer Engagement 
  Connect
  SES
> Business Productivity 
  Alexa for Business
  Chime
  Work Docs
  WorkMail
> Desktop & App Streaming 
  Workspaces
  AppStream 2.0




Summary 
---

ACG must read:
- security process whitepaper (Shared Security Model)


* Shared Security Model
  - storage decommissioning
  - https against eavesdropping, tampering and message forgery
  - VPN <-> VPC
  - network monitoring: DDoS, MITM, Ip spoofing, Port Scanning, packet sniffing
  - aws credentials
    * Password (root or iam) to log in
    * MFA (root or iam) to log in
    * Access Key for SDK, CLI or Aws Rest APIs
    * Key Pairs. 1024-bit SSH-2 RSA key
      - SSH login to ec2
      - CloudFront signed URLs
    * X.509 Certificates for S3 to sign SOAP requests
  - Instance Isolation
    * Xen hypervisor separate ram and networking
    * ram set to zero




> Compute 

* EC2
  - spot pay p/hour, except if aws terminate it (get free hour)
  - Instance Types
    * DR MC GIFT PX
    * [link](https://github.com/escamarla/aws-training/blob/master/other-resources/docs-md/instance-types.md)
  - Metadata
    * public-ipv4, security-groups, ami-id, hostname, instance-id, instance-type, public-keys , etc
    * [link](https://github.com/escamarla/aws-training/blob/master/other-resources/docs-md/instance-metadada.md)
  - Termination protection off by default
  - Root volume encrypted by 3rd party tool (bit locker)
  - Snapshots of encrypted volumes are encrypted automatically
  - Make public unencrypted volumes only
  - Snapshot of a RAID array: freeze the file system or unmount the RAID or (better) Shutdown ec2 instance
  - AMI are regionals

Elastic Beanstalk
Lightsail
ECS
Lambda
Batch

> Storage 

* S3 
  - 0 byte to 5TB
  - read after write consistency for puts of new objects
  - eventual consistency for everwrite puts & deletes (can take some time to propagate)
  - S3, S3-IA, S3-RRS, Glacier
  - Key(name), Value(data), Version Id, Metadata, Access Contro Lists
  - Versioning MFA Delete
  - Cross Region Replication. Versioning on both
  - Access logs
  - S3 Transfer Acceleration
  - S3 Static Websites. Serverless. Cheap. Scale
  - HTTP-200 successful write
  - Multipart upload

* EBS
  - [Types](https://github.com/escamarla/aws-training/blob/master/other-resources/docs-md/instance-types.md)

* EFS
  - NFSv4
  - scale, no provisioning upfront, thousands concurrent NFS connections
  - multi AZ one region
  - Read After Write Consistency


* Snowball
  - Can Import -to-> S3
  - Can Export -from-> S3
  - What is Import/Export

* Storage Gateway
  - File GW --> to S3 for flat files
  - Volume GW
    * Stored Volumes. On site --asynch backed--> to S3
    * Cached Volumes. On S3 and freq access data cached on site
  - GW Virutal Tape Labrary (VTL)

> Databases 

* RDS
  - SQL, MySQL, PostgreSQL, Oracle, Aurora, MariaDB
  - MultiAZ vs Read Replica
  - Aurora
    * 3 AZ, 2 copies in each = 6 copies
    * self healing
    * Rplicas:  
      - Aurora: 15 replicas
      - MySql read replicas

* DynamoDB
  - push button scaling, no downtime
  - Eventual Consistent Reads or strongly CR

* Elasticache
  - Memcached
  - Redis


* RedShift
  - Single Node 160Gb
  - Multi-Node
    * Leader Node: manages client connections and receives queries
    * Compute Node: store data and perform queries and computations. Up to 128 COmpute Nodes

> Migration 

AWS Migration Hub
Application Discovery Service
Database Migration Service
Server Migration Service
Snowball

> Networking & Content Delivery 

* VPC
  - NAT instances vs. NAT GWs. Up to 10 Gbps
  - NACLs
    * 1 defaul per VPC
    * NACL-subnet   1-N
    * apply in order
    * stateless
    * block IPs no SG
  - VPC Flow Logs
    * Stores in CW
    * peerinf vpc if both are in your account
    * immutable configuration
    * no log
      - ec2 <-> aws dns
      - windows <-> amazon windows license
      - to/from 169.254.169.254
      - DHCP traffic
      - reserved ip default vpc router
  - VPC Endpoints (ex S3 endpoint)

* CloudFront
  - Origins: S3, EC2, ELB or Route53
  - Clean cached objects u will charged

* ELB
  - No IP, resolved by DNS name
  - App LB. 2 public subnets at least


* Routse 53  
  - Alias Record vs. CNAME (always choose alias)
  - Routing policies: Simple, Weighted, Latency, Failover and Geolocation

API Gateway
Direct Connect

> Developer Tools 
CodeStar
CodeCommit
CodeBuild
CodeDeploy
CodePipeline
X-Ray
Cloud9

> Management Tools  

* Cloud Watch
  - Dashboards/Alarms/Events/Logs

CloudFormation
CloudTrail
AWS Config
OpsWorks
Service Catalog
System Manager

* Trusted Advisor
  - opps to save money
  - improve performance
  - close security gaps
  - not MFA, not cloudTrail, public S3 buckets


Managed Services

> Media Services  

* Elastic Transcoder
  - media files phones, tablets, pc's
  - popular formats, resolutions


MediaConvert
MediaLive
MediaPackage
MediaStore
MediaTailor
> Machine Learning  

SageMaker
Comprehend
DeepLens
Lex
Machine Learning
Polly
Rekognition
Amazon Trasnlate

> Analytics 
Athena
EMR
CloudSearch
ElasticSearch Service

* Kinesis
  - processing of streaming big data in real-time
  - [sumlogic](https://www.sumologic.com/blog/devops/kinesis-streams-vs-firehose/)
  - Kinesis Streams
    * Producers (ec2, pcs, mobiles)   
      --> Kinesis streams Shards --> ec2 consumers   
      --> Dynamo/S3/EMR/Redshift  
    * 24 hs - 7 days Retention
  - Kinesis Firehose
    * Producers (ec2, pcs, mobiles)    
      --> Kinesis Firehose (Lambda Optional) --> S3
  - Kinesis Analytics
    * Producers (ec2, pcs, mobiles)    
      --> 
  - Kinesis Video Streams

QuickSight
Data Pipeline
Glue

> Security & Identity & Compliance  

* IAM
  - Effect-Action-Resource
  - Principal?

Cognito
GuardDuty
Inspector
Macie
Certificate Manager
CloudHSM
Directory Service
WAF
Shield
Artifact

> Application Integration 
Step Functions
Amazon MQ


* SQS
  - Max 256 KbB
  - 1 min to 14 days. default 4 days
  - Visibility Timeout max 12 hs
  - long polling
  - View 'SWF vs SQS' on SWF
  - View 'SNS vs SQS' on SNS

* SWF
  - SWF vs SQS
    * Retention period 1 year - 14 days
    * Task oriented API - Message oriented
    * No duplicated
  - Actors
    * Workflow Starters, Deciders & Activity Workers

* SNS
  - Subscribers: Http/S, Email/Json, SQS, App, Lambda
  - SNS vs SQS
    * Both messaging services
    * Push - Polls



> Customer Engagement 
Connect
SES

> Business Productivity 
Alexa for Business
Chime
Work Docs
WorkMail

> Desktop & App Streaming 
Workspaces
AppStream 2.0


* Encryption
  - In Transit: SSL/TLS
  - At Rest
    * SSE
      - SSE-S3
      - SSE-KMS
      - SSE-C
    * Client Side Encryption (CSE)





































* Well Architected Framework
  - [AWS Training summary](https://github.com/escamarla/aws-training/tree/master/aws/aws-well-architected-training)
  - [A Cloud Guru](https://github.com/escamarla/aws-training/blob/master/a-cloud-guru/02-certified-solutions-architect-associate-2018/readme.md#waf)
  - [AWS Well-Architected Framework November 2017](https://d1.awsstatic.com/whitepapers/architecture/AWS_Well-Architected_Framework.pdf)
* [Service Limits](https://github.com/escamarla/aws-training/blob/master/exam-preparation/docs-md/aws-limits.md)
* [Instance Types](https://github.com/escamarla/aws-training/blob/master/exam-preparation/docs-md/instance-types.md)
* Shares responsability model
  - [Chart](https://github.com/escamarla/aws-training/blob/master/exam-preparation/cloud-academy-summary/28-of-31-2017-exam-primer/00-13-security-responsability.png)
* S3 types availability and durability %
  - https://aws.amazon.com/s3/storage-classes/
* Trusted Advisor Checkpoints
* Diff: SSE-KMS, SSE-S3 & SSE-C
* VPN connection
* Autoscaling and launch configuration
* DR memorize
  - https://github.com/escamarla/aws-training/blob/master/exam-preparation/cloud-academy-summary/28-of-31-2017-exam-primer/00-06-disaster-recovery-comparission.png
* Federation
  - [Federated Identity](https://github.com/escamarla/aws-training/blob/master/exam-preparation/cloud-academy-summary/28-of-31-2017-exam-primer/00-15-federate-identity.png)
  - [Fed Id with Cognito](https://github.com/escamarla/aws-training/blob/master/exam-preparation/cloud-academy-summary/28-of-31-2017-exam-primer/00-16-federate-identity-aws-cognito.png)
  - [SAML]()
* [HA Top 10](https://github.com/escamarla/aws-training/blob/master/exam-preparation/cloud-academy-summary/28-of-31-2017-exam-primer/00-09-ha-top-ten.png)
* EC2 States
  - [Sate Machine](https://github.com/escamarla/aws-training/blob/master/exam-preparation/cloud-academy-summary/28-of-31-2017-exam-primer/00-02-ec2-states.png)
  - [Comparission](https://github.com/escamarla/aws-training/blob/master/exam-preparation/cloud-academy-summary/28-of-31-2017-exam-primer/00-03-ec2-differences-stop-reboot-terminate.png)
* [Encryption Options](https://github.com/escamarla/aws-training/blob/master/exam-preparation/cloud-academy-summary/28-of-31-2017-exam-primer/00-21-aws-encryption-options.png)
* [Service Catalog](https://github.com/escamarla/aws-training/blob/master/exam-preparation/docs-md/aws-services-catalog.md)


<p align="right"><a href="#top">Top</a></p>


The End
