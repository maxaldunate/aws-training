# Certified Developer for AWS Foundation

Video at ...  
https://cloudacademy.com/amazon-web-services/certified-developer-foundations-course/  

# Compute

## Amazon EC2

### AMI
Amazon Machine Image  
Origins: Amazon, Customs & Market Place

### Instance Types

Resources:   
CPU, Memory, Storage & Networking

* Genral Purpose  
Balanced resources  
Ideal for small-med apps, ddbb, test&dev environments
- Compute Optimized  
Front-end, web servers, science apps
- GPU  
Graphic processing unit, graphic-intensive apps  
- Memory optimized  
large-scale, enterprise-class, in-mem apps
- Storage Optimized  
SSD backed for low latency and high I/O perfromance  
Analytic workload, no sql ddbb, data file systems & lock processing apps

### Instance Purchasing Options

* On-Demand instances  
	- Flat rate & pay per hour  
	- Launched at any time for as long as needed.  
	- Irregular uninterruptable workloads  
	- Test & Dev enverinments  

* Reserved Instances
	- Purchased fro a set period of time for a reduced cost (till 75%)
	- Best appllied for long term, predicateble workloads
	- Discounts
		- Pay all upfront: 1 to 3 years regardless the number of hours the instance is used
		- Partial upfront: smaller upfront for smaller discount
		- No upfront: the smallest discount is applied

* Spot Instances
	- Bid for a large EC2 instance at a very low price
	- No guarantee of having it
	- Can suddenly be terminated 
	- Are only useful for processing data and apps that can be suddenly interrupted, batch jobs and background processing data
	- Just pay for running time

* Dedicated Instances
	- Next item
* Dedicated Hosts
	- Next item


### Tenancy

* Shared
	- launched on any available host with required resources 
	- multiple customers at the same host
	- Security mechanisms prevent accessing one each other
* Dedicated Instances
	- launched on hardware that no other customer can access
	- incur additional charges 
* Dedicated Hosts
	- The same that dedicated instances with additional visibility and control of the physical host


NOTE  
Recommend share tenancy for costs except to comply with a regulation


### User Data
* Allows to run commands at boot time
* Perform functions upon boot
* Download latest OS updates (yum update -y)


### Storage Options
* Persistent Storage
	- ESB: Elastic Block Storage
	- Phisically separated from the EC2 instance
	- ESB are network attached to EC2
	- Replicate to other zone for resiliency
	- You can disconnect for EC2 & reattach to another EC2 instance
	- You can encrypt & backup snapshots to a simple storage service S3

* Ephemeral Storage
	- Create by some EC2 instances themselves  
	  Known as instance backed storage
    - Attached to EC2 instance
    - When instance stopped all data on disk is lost
    - NOTE: If you reboot all data WILL remain (not if you stopped)
    - Unable to detach

### Security

* Security Group  
Is a firewall for the instance, allowing restrict traffic for ingress and egress perspective
	- Source and destination restriction
	- Inbound and outbound rules
	- Ports and protocols usage
	- [Blog Security Group  - Instance Level Security](https://cloudacademy.com/blog/aws-security-groups-instance-level-security/)

* Key Pairs
	- Public Key: encrypts username & password
	- Private Key
		- 	On Windows decrypt data and gain access to credentials
		- 	On Linux remotely connect onto the instance via SSH
	- After first log in you can set up your own authentication methods
	- Keep your OS patched & security fixes uo to date (your responsability)

### EC2 Dashboard Status Checks

* System Statush Checks
	- Issues relating to the underlying host
	- Loss of power, network connectivity, hardware and software on the host
	- Faulty components that are under AWS responsability
	- Stop and restart the instance (Don't reboot.. occurs in the same host)
* Instance Status Checks
	- Issues with the EC2 instance itself
	- Incorrect network configuration, corrupt files, exhausted memory, incomp kernel
	- Requires the instance owner to troubleshoot and resolve th issue

### Recommended Labs

Create yout first amazon ec2 instance(Linux)  
https://cloudacademy.com/amazon-web-services/labs/create-your-first-amazon-ec2-instance-1


Create yout first amazon ec2 instance(Windows)  
https://cloudacademy.com/amazon-web-services/labs/create-your-first-amazon-ec2-instance-14

## Amazon ELB and Auto Scaling

### ELB. Elastic Load Balancing
High availability and resilience

#### Classic Load Balancer
Routes traffic based on app and network information

* Multiple Web Serves example
* Even in more than one Availability Zone (AZ)
* Setting up steps: 
	* Define ELB
      - External Load Balancer   
        Public IP adderss, data from inet (Route 53)
	  - Internal Load Balancer  
	    Internal IP, mongoDB shards example
    * Select at least 2 Availability Zones
    * ELB Listener Configuration. http/s, tcp & ssl
	* Add Security Groups
	* Configure Security Settings  
	  For https you need to deploy a SSL certificate, checking before to send to a EC2 instance
	* Configure Health Checks  
	  A ping to the instance
	* Add EC2 instances
	* Add Tags

#### Auto Scaling

* How its work  
For example at 75% of CPU ussage you can deploy another EC2 instance **(scale out)** and reduce **(scale in)**  when the demand has drop.
	* Automatic insfraestructure management (no manual steps)
	* Better user experience
	* Reduce costs
	* No downtime deploy
	* You can attach ELB to a "Auto Scaling Group" of EC2 instances
* Auto Scaling Configuration
	* Launch Configuration  
	  Template to launch new instances. AMI, instance type, IP address, storage, user data, sec groups, etc.
    - Auto Scaling Group  
      Defines scaling policies  
      Defines where place resources (AZ)
	  
Demonstration

#### Application Load Balancer
Routes traffic catering for multiple apps on the same EC2 instance
Nothing said :(


#### Labs Recommended

Creating your first Classic Load Balancer  
https://cloudacademy.com/amazon-web-services/labs/create-your-first-amazon-elastic-load-balancing-elb4/

Creating your first Auto Scaling group  
https://cloudacademy.com/amazon-web-services/labs/creating-your-first-auto-scaling-group-52/

Launching Auto scaling groups behind a Classic Load Balancer  
https://cloudacademy.com/amazon-web-services/labs/launching-auto-scaling-groups-behind-classic-load-balancer-56/


## Amazon ECS

***Amazon EC2 Container Service***

* Run docker-enabled apps across a cluster of EC2 instances  
* ECS abstract the cluster management by passing the responsability over to the service itself  
* Docker and Container
* ECS removes the need to manage the cluster management system
* There is no need to install any management or monitoring software
* AWS CloudWatch monitors metrics against containers and clusters

Amazon ECS Cluster
* Cluster act as a resource pool
* Clusters are dynamically scalable and multiple instances can be used
* Clusters can only scale in a single region
* Containers can be scheduled to be deployed across your cluster
* Instances within the cluster also have a Docker daemon and an ECS agent


Other course
Introduction to Docker at ...  
https://cloudacademy.com/cloud-computing/introduction-to-docker-course


## AWS Elastic BeanStalk

#### AWS managed service to help you deploy web apps  
* Provision and deploy the appropriate resources to your web apps, such as:
	* EC2
	* Auto Scaling
	* App health monitoring
	* Elastic Load Balancing
* Engineers unfamiliar with AWS
* Quick solution
* Free to use

#### AWS Elastic Beanstalk Architecture
* Applications. Collections of elements
* App Versions  
  A specific reference to a section of deployable code, typically to S3
* Environment 
* Environment Configuration
* Configuration Template

#### AWS Elastic Beanstalk Workflow
* Create Application
* Upload Version
* Launch Environment
* Manage Environment

#### Environments
* Web Server Environment  
  Tipically use: 
	* Route 53 for DNS
	* ELB
	* Auto Scaling
	* EC2
	* Security Groups

* Worker Environment  
  Tipically use:
	* SQS. Simple Queue Service
	* EC2 
	* IAM Roles (grant access to EC2 instances)
	* Auto Scaling

####  Configuration options
* Platform selection: python, ruby, tomcat, etc
* Single or multiple instances
* Deployment policy: at once or rolled out in batches
* App URl
* Additional resources: RDS database, etc
* Instance details: type and size, storage ...
* Permissions through IAM use


Labs

Deploy a PHP application using Elastic Beanstalk at ...  
https://cloudacademy.com/labs/deploy-php-application-using-elastic-beanstalk-26/

Run a Controlled Deploy with AWS Elastic Beanstalk at ...  
https://cloudacademy.com/labs/run-controlled-deploy-aws-elastic-beanstalk-43/


## AWS Lambda

Run code in response to events in a **serverless** environment

Relatred Course at ...  
https://cloudacademy.com/amazon-web-services/what-is-serverless-computing-course/

Example  
You could create a lambda function to execute every time an image is uploaded to a particular bucket in S3 which will then compress the image into a zip format.  
This function will be trigged upon a PUT request to the bucket.  

Languages
* Node.js
* Java
* C#
* Python

#### Compute power costs
- EC2 charges for compute time per hour
- AWS Lambda charges for compute time used to the closet 100ms plus the number of requests

**Very cheap compute option for run event-driven code**

#### Lambda Function
* Required resources. ram
* Max exec timeout
* IAM role
* Handler name
* Triggers
	* S3
	* DynamoDB
	* CloudFront
	* API Gateway

#### Lambda Function creation flow
* Select a blueprint. ex. s3-get-object
* Configure Triggers
* Configure Functions. Upload code or edit it

**KEY BENEFIT**  
**It is a highly scalable serverless service and cost optimized**

Labs

Introduction to AWS Lambda  
https://cloudacademy.com/amazon-web-services/labs/introduction-aws-lambda-22/

Automating EBS snapshots with lambda  
https://cloudacademy.com/amazon-web-services/labs/aws-lambda-s3-events-55/

Process Amazon S3 events with AWS Lambda  
https://cloudacademy.com/amazon-web-services/labs/automating-ebs-snapshots-lambda-and-cloudwatch-events-45/


## AWS Batch

### AWS Batch Components

#### Jobs
* Ex. executable file or a shell script
* Run on EC2 instances as a containerized app
* States: Submitted, pending, running, failed, etc ...

#### Job Definition
* How many CPU
* Data Volume
* IAM Role
* Mount points

#### Job Queues
* Possible multiple queues with different priorities
* On-demand and spot instances are supported by queues

#### Job Scheduling
* Takes care of when a Job should be run and from which compute environment
* Typically first-in-first-out
* Ensures that higher priority queues are run first

#### Compute Environments
* Managed Environments (by AWS)
* Unmanaged Environments (by You)

**Use cases**  
Run multiple jobs in parallel using batch computing for ex to analyze financial risk models, perform media transcoding or engineering simulations.  

## AWS Lightsail

* Is a Virtual Private Server (VPS)  
* Simple, qick and very easy to use
* For small scale use cases for smal business or single users

### Components
* the virtual instance itself
* operating system
* optional pre-installed apps
* SSD storage
* data transfer allowance
* dns management
* static IP address

### Creating a Lightsail instance
* From aws console or lightsail page itself
* Pick instance image
* OOSS and apps like wordpress, lamp, mean, nodejs, joomla, magento, drupal, gitlab, redmine, nginx
* Add launch script
* Change SSH Key pair
* Choose instance plan (mandatory), costs, resources.. from 5$ to 80$ month
* Select AZ
* Name yor instance

### Managing a Lightsail instance
* Connect. Using SSH
* Metrics
* Networking
* Snapshot
* History
* Delete 

### Compute Summary

* EC2. Elastic Compute Cloud
* ELB. Elastic Load Balancing & Auto Scaling
* ECS. Amazon EC2 Container Service
* AWS Elastic Beanstalk (web servers vs work env)
* AWS Lambda (serverless)
* ASW Batch (Jobs)
* Amazon Lightsail (ex Wordpress $5/month)


# Storage


## Amazon S3

### Amazon Simple Storage Service S3

* Managed Storage Service
* High Durability 99.999999999% (eleven 9)
* High availability 99.99%
* Replication across multiple AZ
* Replication across multiple regions (on-demand)
* Organization in elastic Buckets
* 0 to 5TB S3 Objects
* 5GB in a single PUT
* >100MB use multipart upload
* 100 bucket per region
* Expand dinamically
* Unique global name
* 3 to 63 chars, no underscore like URL, not use points for SSL & acceleration

### S3 Permissions
* AWS IAM
* Access Control Lists (ACLs)
* Bucket policies
* Quert string authentication
* Static web hosting

### Encryption
* SSE-S3 Keys AAES 256
* KMS managed keys SSE-KMS
* Customer provided keys SSE-C

### Durability
* Standard
* Std- infrequent access: design for large objects & 128Kb minimun size
* Reduce redundancy: -30% cost & ex.preview images, non critical data

### Versioning
* Have to enable, not default
* At suspend(disable), already versioned objects remain versioned

### Lifecycle
* Log files or older archives
* Move to Amazon Glacier

### Logging
* Log in a folder access audith

### Events
* SNS
* SQS
* Lambda

### Cross Region Replication
* require versioning enable
* require permission to write

### Transfer Acceleration
* 50% to 500% for cross country large objects
* new endpoint "s3.accelerate"
* comparision speed tool

### Requester Pays
* Authentication is mandatory
* Can reduce costs for partners access paying



Calculator ... 
http://calculator.s3.amazonaws.com

Create SNS  
1. Create topic
2. Create Subscription


## Data Services

### Dynamo DB

### Elasticache
* Based on Memcached and Redis
* heavy utilization
* integration changes

### Elastic Map Reduce
* Hadoop framework
* Process user behavior data

### Kinesis
* Real-time data streams
* Order of TB per hours over 100.000 different sources
* KCL. Kinesis Client Library


## Amazon RDS
## Amazon Data Services

* Supported DB
  * Auraroa
  * PostgreSql
  * MySql
  * MariaDB
  * Oracle
  * MS-Sql
* CloudWatch monitoring
* Read replicas
* Event Suscription Notification (through SNS)
* Automate Backups
  * Via transaction log
  * Specified retention period
  * Restore any point in time into the retention period
  * Maximun 35 days
* DB Snapshots
  * Like a full backuo
  * You have to delete them
* Multi-AZ deployment
  * Primary in one AZ; Secondary in another AZ
* Automatic host replacement
* AWS encryption service
  * Aws KMS (Key management service)
  * Amazon Cloud-HSM
* Resource level permissionss
  * Integrated with IAM
  * You can use Tags
* Storage Type
  * General Purpose (SSD)
  * Provisioned (SSD)
  * Magnetic
* Maintenance Window
  * With Multi-AZ you have no downtime between Primary and Secondary
  * Patches
    * Urgent/Security: Automatic
	* Major changes
	* Engine Varsions --> all at the same time (with downtime)
* Best Practices
  * Monitoring Ram, Cpu and Storage with CloudWatch
  * Scale Up DB storage limits
  * Enable automatic backup, setting backup window
  * <10k tables on provisiones or <1k tables on general purpouse ¿?
  * In MySql avoid too large tables
* Security
  * Controlled by Database Security Groups
  * DSG are not interchangeable with EC2 Security Groups
  * DSG default to "deny all" access
  * DSG just DDBB server port access
  * Generate SSL certificates for each DB instance
* Security Best Practices
  * Not use root account
  * Use IAM to control access to API actions
  * IAM account to each person
  * Grant minimun permission
  * Use IAM Groups
  * Rotate IAM credentials regularly
 
 
## Amazon EBS
Elastic Block Store for EC2 instances

* Intro
  * Replicated within a AZ
  * off-instances
  * attached to EC2 instance, ramain inctact on desacttach
  * physically written with zeroes on delete
  * you can encrypt data manually or automatic
* Encryption
  * Advanced AES-253 by amazon
  * Occurs within EC2 instance
* Snapshots
  * point in time snapshot, then replicated to S3 multiple AZ
  * from snapshot you can create a new EBS
  * Are incremental
  * EBS tied to a AZ, snapshot to the Region
  * Billed ny increments
  * IMplement LAzy loading, you can use immediatly
  * You can share snapshot
  * Create a EBS from Snapshot you can increase the size
* Volume Types
  * Magnetic
    * Access infrequently
	* Low-cost small size
	* 100 IOPS average
	* 1 GB to 1 TB
  * General Purpose SSD
    * Cost-effective
	* 1 digit millisecond latencies
	* Burst to 3.000 IOPS for extende periods of time
	* Baseline 3 IOPS per GB
	  * Minimun 100 IOPS (at 33.33 GB)
	  * Maximun 10.000 IOPS at 3.334 GB and above
	* 1 GB to 16 TB
  * Provisioned SSD
    * I/O intensive workload. eg. DDBB
	* 4 GB to 16 TB
	* up to 20.000 IOPS per volume
	* ratio IOPS to size can be max 30
	  - ex. 3.000 IOPS must be at least 100 GB
	* Multiple volumes on RAID
  * (st1) Throughput Optimized HDD
    * Low-cost throughput rather thank IOPS
	* Good for large sequential workload such as Amazon EMR, ETL, data warehouse and log processing
	* Bootable st1 vaolumes are not supported
  * (sc1) Cold HDD
    * Low-cosr throughput over IOPS
	* sc1 large sequential cold-data workload
	* sc1 provides inexpensive block store
	* bootable not supported

* Performance Considreations
  * st1 scan quickly (up to 500 MiB/s)
  * Or several full volume scans a day
  * sc1 infrequently access, no more than 250 MB/s
  * Both performance consistenly 90% of burst throughput 99% of the time
  * Use for straming and big data

## Amazon Glacier

* Intro
  * Is low-cost
  * Annual durability eleven 9s
  * Synchronously store data in multiple facilities before returned SUCCESS on upload
  * Store in Vaults, no size limit
  * Individual archives 1 byte to 40 TB
  * RESTfull Web Service for Java and .NET SDKs

* Demonstration
  * Create a Vault ina Region
  * Notifications
  * Settings
    * Free tier retrive 5% of storage
	* Established max rate
	* No retrieval limit


# Services at a Glance

## Services at a Glance

### SQS. Amazon Simple Queue Service
* Timeout 30 seconds
* Msgs retention4 days by default. Setting from 1 minute to 2 weeks.
* Size max 256 KB
* Unlimited number of messages
* Order not guaranteed
* Duplicated msgs (https://stackoverflow.com/questions/23260024/how-to-prevent-duplicate-sqs-messages)
* Trigger AutoScaling in coordination with CloudWatch
* Visibility Windows 12 hours
* Configure dead letters queue (DLQs)
* Purge functionality

### SNS. Amazon Simple Notification Service
* Push msg service
* losely coupled systems
* HTTP/S, SMS, Email, SQS
* Subscription & Publisher
* IAM Access
* 256 KB
* XML, JSON and unfromatted text
* Charge in 64 Kb increments
* Mobile Apps notifications
* Create a Topic
* Create Subscriptions (like endpoint)
* Cloud Watch & Cloud Trail
* Create Cloud Watch Alarm

### SWF. Amazon Simple Workflow Service
* Fully managed state tracker and task coordinator
* Background Jobs with parallel or sequential steps
* Human worker intervention supported
* ex. Video encoding
* Components
  * Task
  * Marker
  * Timer
  * Signal
* ex. eCommerce order fulfillment systems

### SES. Amazon Simple Email Service
* Email sending service
* Integrated through the SNS
* ex. Password reset notifications
* Defined as one communication to one recipient

### Amazon Cloud Search
* Managed Search Solution
* 34 languages
* Highlighting search terms
* Autocomplete faceted search
* Gesospacial Search
* Run on managed EC2, pay per use of instance type
* Need send objects to be indexed

### Amazon Elastic Transcoder
* Media transcoding process
* Can do streaming and progressive download
* Jobs
* Frequently accessed media are cached
* Store in S3

### AWS Lambda
* Java, Python and NodeJs
* Triggered by S3, kinessis or Dynamo DB
* Pull or Push Models 
  * Pull --> Kinessis or DynamoDB (bus architecture)
  * Push --> S2

### Amazon Appstream
* Run windows App on multiple platforms
* Android, Chromebook, iOs, Windows and Apple
* Billed per usage hour on demand or reserved streaming sessions

### Amazon Workspaces
* Desktop computing service that runs Ms-Windows
* Pc over IP (PCoIP) tech from Teradici
* Run everywhere: win. mac, chromebook, iPads, Kindle and Android
* Active Directory or AWS Direct Connect
* Can install software with yur license
* D. backed up every 12 hours
* Support Encryption

### Amazon API Gateway 
* Deliver mobile and web app back ends
* The Control Service
* The Execution Service

### AWS Data Pipeline
* Move data between compute and storage services
* On-premise to cloud
* Fault-tolerant way
* Critical for move large batches of data
* Template for commons trasnformations tasks

### ECS. Amazon Container Services
* Fully utilize EC2
* No additional costs, pay for EC2 instances usage
* Using of EC2 cluster

### Amazon CloudFormation
* Collection of AWS resources
* Support Elastic Beanstalk app environment
* No addtional costs
* Json based DSL (Domain specific language)
* Template --to--> stack
* VPC, Subnets, gateways, route tables, ACLs, elastic IPs, EC2, Security Groups, AutoScaling, ELB, RDS ...
* Rollback if not finish

### Amazon OpsWork
* Chef & 40
* Configuration Management with Chef
* Supports all linux and windows 2012 R2
* 40 stacks
* 40 Layers
* 40 instances
* 40 apps

### Amazon CloudTrail
* Little or not human involvement
* No additional charges

### Some Differences
* OpsWork... configuration, less thank CFormation
* CloudFormation... Json Template (many resources)
* Beanstalk... for developers (almost serverless¿?)

