# AWS Main Summary

## Courses that this document summarize

- DONE. Certified Solutions Architect - Associate 2018

> **I'm here** Certified Developer - Associate 2018

- Certified SysOps Administrator - Associate 2018
- Certified Solutions Architect - Professional
- Certified DevOps Engineer - Professional
- AWS Certification Exam Prep Guide
- Create a Serverless Portfolio with AWS and React
- AWS Lambda


## Main Summary

### Miscelaneous subjects

* Federation
  - [Federated Identity](https://github.com/escamarla/aws-training/blob/master/other-resources/cloud-academy-summary/28-of-31-2017-exam-primer/00-15-federate-identity.png)
  - [Fed Id with Cognito](https://github.com/escamarla/aws-training/blob/master/other-resources/cloud-academy-summary/28-of-31-2017-exam-primer/00-16-federate-identity-aws-cognito.png)
  - [SAML]()


* [Service Catalog](https://github.com/escamarla/aws-training/blob/master/other-resources/docs-md/aws-cloud-products.md)


* DR memorize
  - https://github.com/escamarla/aws-training/blob/master/exam-preparation/cloud-academy-summary/28-of-31-2017-exam-primer/00-06-disaster-recovery-comparission.png


* Storage Options in the Cloud Whitepaper
  - S3, Glacier, EBS, Instance-Storage, Imp/Exp
  - Storage GW, CloudFront, SQS, RDS, DynamoDB, Elasticache, Redshift, DDBB on EC2


* Risk & Compliance Whitepaper - **Shared Responsability Model**
  - [Chart](https://github.com/escamarla/aws-training/blob/master/exam-preparation/cloud-academy-summary/28-of-31-2017-exam-primer/00-13-security-responsability.png)
  - request permissions do not violate aws acceptable use policy
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

* Architecting for the Cloud Best Practices Whitepaper
  - [Architecting for the Cloud - AWS Best Practices - February 2016](https://d0.awsstatic.com/whitepapers/AWS_Cloud_Best_Practices.pdf)
  - Business Benefits of Cloud
    * almost zero upfront
    * just-in-time infraestructure
    * efficient resource utilization
    * usage-based costing
    * reduced time to market
  - Techincal Benefits of Cloud
    * Automation "Scriptable" infra
    * Auto-scaling
    * Proactive scaling
    * efficient development lifecycle
    * improve testability
    * disaster recovery & business continuity
    * "overflow" the traffic to the cloud
  - Elasticity
  - Design for failure (Decoupling)
  - Security


* Well Architected Framework
  - [AWS Training summary](https://github.com/escamarla/aws-training/blob/master/other-resources/docs-md/aws-well-architected-framework.md)
  - [A Cloud Guru](https://github.com/escamarla/aws-training/blob/master/a-cloud-guru/02-certified-solutions-architect-associate-2018/readme.md#waf)
  - [AWS Well-Architected Framework November 2017](https://d1.awsstatic.com/whitepapers/architecture/AWS_Well-Architected_Framework.pdf)


* Encryption
  - [Encryption Options](https://github.com/escamarla/aws-training/blob/master/other-resources/cloud-academy-summary/28-of-31-2017-exam-primer/00-21-aws-encryption-options.png)
  - In Transit: SSL/TLS
  - At Rest
    * SSE
      - SSE-S3
      - SSE-KMS
      - SSE-C
    * Client Side Encryption (CSE)
  - EBS encryption powerfull instance (M3, C3, R3, G2 ...)



* AWS Organizations
  - Consolidated Billing
  - Paying account should be used for billing porposes only (best practice)
  - 20 linked accounts
  - Billing Alerts




* Tags
  - Key value pairs, metadata
  - Sometime inherited: CloudFormation & Elastic Beanstalk
* Resource Groups
  - Info like Region, Name & Health Checks


* Available SDK's
  - Android, iOS, JavaScript
  - Java/.Net/Node.js/PHP/Python/Ruby/Go/C++


### Compute 

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
  - [State Machine](https://github.com/escamarla/aws-training/blob/master/other-resources/cloud-academy-summary/28-of-31-2017-exam-primer/00-02-ec2-states.png)
  - [States Comparission](https://github.com/escamarla/aws-training/blob/master/other-resources/cloud-academy-summary/28-of-31-2017-exam-primer/00-03-ec2-differences-stop-reboot-terminate.png)



Elastic Beanstalk
Lightsail

* ECS
  - Regional, one or more AZ
  - Containerisation Benefits
    * Escape from dependency hell
    * Consistent progression from DEV->TEST->QA->PROD
    * Isolation app A, B and C
    * Much better resource management
    * EXtreme code portability
    * Micro-services
  - Docker Components
    * Docker IMage, Docker Container, Layers/Union File System
    * DockerFile, Docker Daemon/Engine, Docker Client, Docker Registries / Docker Hub
  - Soft Limits
    * Cluster per Region defualt 1.000
    * Instacnes per Cluster defualt 1.000
    * Services per Cluster defualt 500
  - Hard Limits
    * One load balancer per Service
    * 1.000 tasks per service (the "desired count")
    * Max 10 containers per task definition
    * Max 10 tasks per instance (host)
    


Lambda
Batch

### Storage 

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
  - [Storage Classes](https://aws.amazon.com/s3/storage-classes/)

* EBS
  - [Types](https://github.com/escamarla/aws-training/blob/master/other-resources/docs-md/instance-types.md)
  - Instance stored volume cannot be detached and reattached to other ec2

* EFS
  - NFSv4
  - scale, no provisioning upfront, thousands concurrent NFS connections
  - multi AZ one region
  - Read After Write Consistency

* AWS Import/Export - Snowball
  - Can Import -to-> S3
  - Can Export -from-> S3
  - What is Import/Export

* Storage Gateway
  - File GW --> to S3 for flat files
  - Volume GW
    * Stored Volumes. On site --asynch backed--> to S3
    * Cached Volumes. On S3 and freq access data cached on site
  - GW Virutal Tape Labrary (VTL)

### Databases 

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
  - partition 10GB-3K rcu-1K wcu
  - auto increase, no auto decrease
  - wcu & rcu split between partitions

* Elasticache
  - Memcached
  - Redis


* RedShift
  - Single Node 160Gb
  - Multi-Node
    * Leader Node: manages client connections and receives queries
    * Compute Node: store data and perform queries and computations. Up to 128 COmpute Nodes

### Migration 

AWS Migration Hub
Application Discovery Service
Database Migration Service
Server Migration Service
Snowball

### Networking & Content Delivery 

* VPC
  - NAT instances vs. NAT GWs. Up to 10 Gbps
  - NACLs
    * 1 defaul per VPC
    * NACL-subnet   1-N
    * apply in order
    * stateless
    * block IPs no SG
  - VPC Peering
    * No transitive
    * No overlapping CIDR
    * No in different regions
  - VPC Flow Logs
    * Stores in CW
    * peering vpc if both are in your account
    * immutable configuration
    * no log
      - ec2 <-> aws dns
      - windows <-> amazon windows license
      - to/from 169.254.169.254
      - DHCP traffic
      - reserved ip default vpc router
  - VPC Endpoints (ex S3, Kinessis)

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

* Direct Connect
  - Reduce costs w/large volumes, increase reliability & bandwith
  - 10Gbps or 1Gbps
  - Sub 1Gbps can be puchased to aws direct connect partners
  - Uses Ethernet VLAN trunking 802.1Q



### Developer Tools 

CodeStar
CodeCommit
CodeBuild
CodeDeploy
CodePipeline
X-Ray
Cloud9

### Management Tools  

* Cloud Watch
  - Dashboards/Alarms/Events/Logs

CloudFormation

* CloudTrail
  - Per Region
  - Consolidate logs using S3 buckets

AWS Config

* OpsWorks
  - Orchestration Service that use Chef
  - Recipes, cookbooks, knife, kitchen

Service Catalog
System Manager

* Trusted Advisor
  - opps to save money
  - improve performance
  - close security gaps
  - not MFA, not cloudTrail, public S3 buckets


Managed Services

### Media Services  

* Elastic Transcoder
  - media files phones, tablets, pc's
  - popular formats, resolutions
  - pay based on minutes and resolution


MediaConvert
MediaLive
MediaPackage
MediaStore
MediaTailor

### Machine Learning  

SageMaker
Comprehend
DeepLens
Lex
Machine Learning
Polly
Rekognition
Amazon Trasnlate

### Analytics 

Athena
EMR
CloudSearch
ElasticSearch Service

* Kinesis
  - processing of streaming big data in real-time
  - [sumlogic](https://www.sumologic.com/blog/devops/kinesis-streams-vs-firehose/)
  - Kinesis Streams
    * Definition
      Capturing large amounts of data (terabytes per hour) from data producers, and streaming it into custom applications for data processing and analysis.
    * Producers (ec2, pcs, mobiles)
    * Producers (Kinesis Producer Library, Kinesis Client Library &  Kinesis Agent)
      --> Kinesis streams Shards --> ec2 consumers   
      --> Dynamo/S3/EMR/Redshift  
    * Data available from 24 hs to 7 days Retention
    * Not scale automatically, each shard have a capacity (1MB in 2 MB out per second)
  - Kinesis Firehose
    * Definition
      Data-ingestion product offering for Kinesis. It is used to capture and load streaming data into other Amazon services such as S3 and Redshift.
    * Producers (ec2, pcs, mobiles)    
      --> Kinesis Firehose (Lambda Optional) --> S3
    * Automatically scale to meet demand, which is in contrast to Kinesis Streams
  - Kinesis Analytics
    * Definition
      Forthcoming product offering that will allow running of standard SQL queries against data streams, and send that data to analytics tools for monitoring and alerting.
    * Producers (ec2, pcs, mobiles)    
      --> 
  - Kinesis Video Streams
  - 

QuickSight
Data Pipeline
Glue

### Security & Identity & Compliance  

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

### Application Integration 
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

* STS
  - Security Token Service
  - [Link](https://github.com/escamarla/aws-training/blob/master/a-cloud-guru/certified-solutions-architect-associate-2018/readme.md#sts-security-token-service)
  - Sources
    * Federation (typically AD). Uses SaML
    * Federation with Mobile Apps. Uses OpenId Provider (Facebook, Google, Amazon)
    * Cross Account Access
  - Key Terms: Federation, Identity Broker, Identity Store, Identities
  - Scenario for SSO-AD-STS uses S3
    * Actors
      - E    = Employee
      - ERA  = Enterprise Reporting App
      - IB   = Identity Broker
      - STS  = AWS Security Token Service
      - LDAP = Organization LDAP Directory
      - IAM  = AWS Identity Access Management
      - S3   = AWS S3
    * Flow
      1. E enters usr/psw on ERA
      2. ERA calls IB which captures usr/psw
      3. IB validates identity against LDAP
      4. IB calls STS w/GetFederationToken 
         - using IAM credentials
         - include duration (1 to 36 hours)
         - include IAM policy
      5. STS confirms and returns:
         - Access Key
         - Secret Access Key
         - Token
         - Duration (Token's lifetime)
      6. IB return tem security credentials to ERA
      7. ERA uses the security credentials (including the token) to requests S3
      8. S3 uses IAM to verify credentials
      9. IAM provides S3 with go-ahead
  - Exam Tips
    * Develop IB to communicate w/LDAO and STS
    * IB auth with LDAP first, THEN with STS
    * App gets temporary access to aws resources


     

### Customer Engagement 
Connect
SES

### Business Productivity 
Alexa for Business
Chime
Work Docs
WorkMail

### Desktop & App Streaming 

* Workspaces
  - Win7 provided by WinServer 25008R2
  - D: data backed up every 12 hours

AppStream 2.0


The End
