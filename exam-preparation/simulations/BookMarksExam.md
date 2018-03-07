# Bookmarks Final

## Compute

***
Amazon EC2 supports the following storage options: 
* Amazon Elastic Block Store (Amazon EBS) 
* Amazon EC2 Instance Store 
* Amazon Simple Storage Service (Amazon S3)
LEARN MORE: http://docs.amazonwebservices.com/AWSEC2/latest/UserGuide/Storage.html
***
A block device is a storage device that moves data in sequences of bytes or bits (blocks). These devices support random access and generally use buffered I/O. Examples include hard disks, CD-ROM drives, and flash drives. A block device can be physically attached to a computer or accessed remotely as if it were physically attached to the computer. Amazon EC2 supports two types of block devices:

Amazon EC2 supports two types of block devices.  

* Instance store volumes (virtual devices whose underlying hardware is physically attached to the host computer for the instance)
* EBS volumes (remote storage devices)
The SSD, HDD and Magnetic choices are all options for the type of storage offered via EBS volumes. They are not types of block devices.

LEARN MORE: http://docs.amazonwebservices.com/AWSEC2/latest/UserGuide/block-device-mapping-concepts.html
***
You can assign tags only to resources that already exist. You can't terminate, stop, or delete a resource based solely on its tags; you must specify the resource identifier. For example, to delete snapshots that you tagged with a tag key called `DeleteMe`, you must use the `DeleteSnapshots` action with the resource identifiers of the snapshots, such as `snap-1234567890abcdef0`. To identify resources by their tags, you can use the `DescribeTags` action to list all of your tags and their associated resources.

LEARN MORE: http://docs.amazonwebservices.com/AWSEC2/latest/UserGuide/Using_Tags.html
***
As per AWS SLA if the instance is attached to an EBS-Optimized instance, then the Provisioned IOPS volumes are designed to deliver within 10% of the provisioned IOPS performance 99.9% of the time in a given year. Thus, if the user has created a volume of 1000 IOPS, the user will get a minimum 900 IOPS 99.9% time of the year.

LEARN MORE: http://aws.amazon.com/ec2/faqs/
***
You are billed per-second with a one-minute minimum for On-Demand, Spot and Reserved instances as long as your EC2 instance is in a running state, provided the instance is Linux (with some exceptions), and not a Windows operating system, in which case the instance would be billed per-hour.

LEARN MORE: http://aws.amazon.com/ec2/faqs/
***
When the user account has reached the maximum number of EC2 instances, it will not be allowed to launch an instance. AWS will throw an ‘InstanceLimitExceeded’ error. For all other reasons, such as “AMI is missing part”, “Corrupt Snapshot” or ”Volume limit has reached” it will launch an EC2 instance and then terminate it.

LEARN MORE: http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/Using_InstanceStraightToTerminated.html
***
Each AWS region has multiple, isolated locations known as Availability Zones. To ensure that the AWS resources are distributed across the Availability Zones for a region, AWS independently maps the Availability Zones to identifiers for each account. In this case the Availability Zone US-East-1a where George’s EC2 instances are running might not be the same location as the US-East-1a zone of Ray’s EC2 instances. There is no way for the user to coordinate the Availability Zones between accounts.  

LEARN MORE: http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/using-regions-availability-zones.html
***
For Amazon Web Services, the reserved instance (standard or convertible) helps the user save money if the user is going to run the same instance for a longer period. Generally if the user uses the instances around 30-40% of the year annually it is recommended to use RI. Here as the instance runs only for 1 hour  50 minutes daily, or less than 8 percent of the year, it is not recommended to have RI as it will be costlier. At its highest potential savings, you are still paying 25 percent of an annual cost for a reserved instance you are you using less than 2 hours a day, (or less than 8 percent of each year) you are not saving money.

Even a scheduled reserved instance has a key limitation, which is that it cannot be stopped or rebooted, only manually terminated with a possibility that it could be restarted. You would have to terminate and restart it within the 1 hour 50 minute window, otherwise you would need to wait until the next day. For a critical daily process, this is likely not an option.

Spot Instances are not ideal because the process is critical, and must run for a fixed length of time at a fixed time of day. Spot instances would stop and start based on fluctuations in instance pricing, leaving this process potentially unfinished.

The user should use on-demand with EBS in this case. While it has the highest cost, it also has the greatest flexibility to ensure that a critical process like this is always completed.

LEARN MORE: http://aws.amazon.com/ec2/purchasing-options/reserved-instances/
***
If an Auto Scaling group is launching more than one instance, the cool down period for each instance starts after that instance is launched. The group remains locked until the last instance that was launched has completed its cool down period. In this case the cool down period for the first instance starts after 3 minutes and finishes at the 10th minute (3+7 cool down), while for the second instance it starts at the 4th minute and finishes at the 11th minute (4+7 cool down). Thus, the Auto Scaling group will receive another request only after 11 minutes.

LEARN MORE: http://docs.aws.amazon.com/AutoScaling/latest/DeveloperGuide/AS_Concepts.html
***
There are 20 Reserved Instances per Availability Zone in each month.

LEARN MORE: http://docs.aws.amazon.com/general/latest/gr/aws_service_limits.html
***
Amazon VPC provides advanced security features such as security groups and network access control lists to enable inbound and outbound filtering at the instance level and subnet level.
AWS assigns each security group a unique ID in the form sg-xxxxxxxx. The following are the initial settings for a security group that you create:
* Allows all inbound traffic from other instances associated with the default security group (the security group specifies itself as a source security group in its inbound rules)
* Allows all outbound traffic from the instance.
LEARN MORE: http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/using-network-security.html#default-security-group
***
In the event of a disaster to your AWS infrastructure you should be able to quickly launch resources in Amazon Web Services (AWS) to ensure business continuity.  
The following are some key steps you should have in place for preparation:  
1. Set up Amazon EC2 instances to replicate or mirror data.
1. Ensure that you have all supporting custom software packages available in AWS.
1. Create and maintain AMIs of key servers where fast recovery is required. 
1. Regularly run these servers, test them, and apply any software updates and configuration changes.
1. Consider automating the provisioning of AWS resources.
LEARN MORE: http://d36cz9buwru1tt.cloudfront.net/AWS_Disaster_Recovery.pdf
***
Amazon Elastic Compute Cloud (EC2) is a key component in Amazon’s Infrastructure as a Service (IaaS), providing resizable computing capacity using server instances in AWS’s data centers. Amazon EC2 is designed to make web-scale computing easier by enabling you to obtain and configure capacity with minimal friction.  
You create and launch instances, which are collections of platform hardware and software.  
**Different instances running on the same physical machine are isolated from each other via the Xen hypervisor.**  

Amazon is active in the Xen community, which provides awareness of the latest developments. In addition, the AWS firewall resides within the hypervisor layer, between the physical network interface and the instance's virtual interface. All packets must pass through this layer, thus an instance’s neighbors have no more access to that instance than any other host on the Internet and can be treated as if they are on separate physical hosts. The physical RAM is separated using similar mechanisms.  

LEARN MORE: http://d0.awsstatic.com/whitepapers/Security/AWS%20Security%20Whitepaper.pdf
***
Amazon EC2 provides a virtual computing environments, known as an instance.   
After you launch an instance, AWS recommends that you check its status to confirm that it goes from the pending status to the running status, the not terminated status.  
The following are a few reasons why an Amazon EBS-backed instance might immediately terminate:  
* You've reached your volume limit. 
* The AMI is missing a required part.
* The snapshot is corrupt.  
LEARN MORE: http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/Using_InstanceStraightToTerminated.html
***
Amazon ECS contains the following components:  
1. A Cluster is a logical grouping of container instances that you can place tasks on.
1. A Container instance is an Amazon EC2 instance that is running the Amazon ECS agent and has been registered into a cluster. 
1. A Task definition is a description of an application that contains one or more container definitions. 
1. A Scheduler is a method used for placing tasks on container instances.
1. A Service is an Amazon ECS service that allows you to run and maintain a specified number of instances of a task definition simultaneously. 
1. A Task is an instantiation of a task definition that is running on a container instance.
1. A Container is a Linux container that was created as part of a task.  
LEARN MORE: http://docs.aws.amazon.com/AmazonECS/latest/developerguide/ECS_clusters.html
***

## Networking
***
Each Amazon EBS Snapshot has a createVolumePermission attribute that you can set to one or more AWS Account IDs to share the AMI with those AWS Accounts. To allow several AWS Accounts to use a particular EBS snapshot, you can use the snapshots's createVolumePermission attribute to include a list of the accounts that can use it.

LEARN MORE: http://docs.amazonwebservices.com/AWSEC2/latest/UserGuide/UsingIAM.html
***
A VPC can span several Availability Zones. In contrast, a subnet must reside within a single Availability Zone.

LEARN MORE: https://aws.amazon.com/vpc/faqs/
***
Amazon CloudFront is a web service for content delivery. CloudFront delivers your content using a global network of edge locations and works seamlessly with Amazon S3 which durably stores the original and definitive versions of your files.  
Amazon CloudFront billing is mainly affected by 
* Data Transfer Out
* Edge Location Traffic Distribution
* Invalidation Requests
* HTTP/HTTPS Requests
* Dedicated IP SSL Certificates  
LEARN MORE: http://calculator.s3.amazonaws.com/index.html
***
Best Practices for Configuring Network Interfaces  
* You can attach a network interface to an instance when it's running (hot attach), when it's stopped (warm attach), or when the instance is being launched (cold attach).
* You can detach secondary (ethN) network interfaces when the instance is running or stopped. However, you can't detach the primary (eth0) interface.
* You can attach a network interface in one subnet to an instance in another subnet in the same VPC, however, both the network interface and the instance must reside in the same Availability Zone.
* When launching an instance from the CLI or API, you can specify the network interfaces to attach to the instance for both the primary (eth0) and additional network interfaces.
* Launching an instance with multiple network interfaces automatically configures interfaces, private IP addresses, and route tables on the operating system of the instance.
* A warm or hot attach of an additional network interface may require you to manually bring up the second interface, configure the private IP address, and modify the route table accordingly. (Instances running Amazon Linux automatically recognize the warm or hot attach and configure themselves.)
* Attaching another network interface to an instance is not a method to increase or double the network bandwidth to or from the dual-homed instance.  
LEARN MORE: http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/using-eni.html#use-network-and-security-appliances-in-your-vpc
***
You restrict access to Amazon S3 content by creating an origin access identity, which is a special CloudFront user. You change Amazon S3 permissions to give the origin access identity permission to access your objects, and to remove permissions from everyone else. When your users access your Amazon S3 objects using CloudFront URLs, the CloudFront origin access identity gets the objects on your users' behalf. If your users try to access objects using Amazon S3 URLs, they're denied access. The origin access identity has permission to access objects in your Amazon S3 bucket, but users don't.

LEARN MORE: http://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/private-content-restricting-access-to-s3.html
***
A placement group is a logical grouping of instances within a single Availability Zone. Using placement groups enables applications to participate in a low-latency, 10 Gbps network. Placement groups are recommended for applications that benefit from low network latency, high network throughput, or both. To provide the lowest latency, and the highest packet-per-second network performance for your placement group, choose an instance type that supports enhanced networking.  
Placement groups have the following limitations:  
* The name you specify for a placement group a name must be unique within your AWS account.
* **A placement group cannot span multiple Availability Zones.**
* Although launching multiple instance types into a placement group is possible, this reduces the likelihood that the required capacity will be available for your launch to succeed. We recommend using the same instance type for all instances in a placement group.
* You can't merge placement groups. Instead, you must terminate the instances in one placement group, and then relaunch those instances into the other placement group.
* A placement group can span peered VPCs; however, you will not get full-bisection bandwidth between instances in peered VPCs. For more information about VPC peering connections, see VPC Peering in the Amazon VPC User Guide.
* You can't move an existing instance into a placement group. You can create an AMI from your existing instance, and then launch a new instance from the AMI into a placement group.  
LEARN MORE: http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/placement-groups.html
***
Amazon VPC enables you to build a virtual network in the AWS cloud - no VPNs, hardware, or physical datacenters required.  
Your AWS resources are automatically provisioned in a ready-to-use default VPC. You can choose to create additional VPCs by going to Amazon VPC page on the AWS Management Console and click on the "Start VPC Wizard" button.  
You’ll be presented with four basic options for network architectures. After selecting an option, you can modify the size and IP address range of the VPC and its subnets. If you select an option with Hardware VPN Access, you will need to specify the IP address of the VPN hardware on your network. You can modify the VPC to add more subnets or add or remove gateways at any time after the VPC has been created.  
The four options are:  
1. VPC with a Single Public Subnet Only
1. VPC with Public and Private Subnets
1. VPC with Public and Private Subnets and Hardware VPN Access
1. VPC with a Private Subnet Only and Hardware VPN Access  
LEARN MORE: https://aws.amazon.com/vpc/faqs/
***
AWS Direct Connect is a network service that provides an alternative to using the internet to utilize AWS cloud services.  
Using AWS Direct Connect, data that would have previously been transported over the Internet can now be delivered through a private network connection between AWS and your datacenter or corporate network.  
1Gbps and 10Gbps are available. Speeds of 50Mbps, 100Mbps, 200Mbps, 300Mbps, 400Mbps, and 500Mbps can be ordered from any APN partners supporting AWS Direct Connect.  
LEARN MORE: https://aws.amazon.com/directconnect/faqs/
***
To use the AWS VPN CloudHub, you must create a virtual private gateway with multiple customer gateways. You can use the same Border Gateway Protocol (BGP) Autonomous System Number (ASN) for each, or if you prefer, you can use a unique ASN for each. Customer gateways advertise the appropriate routes (BGP prefixes) over their VPN connections. These routing advertisements are received and re-advertised to each BGP peer, enabling each site to send data to and receive data from the other sites. The sites must not have overlapping IP ranges. Each site can also send and receive data from the VPC as if they were using a standard VPN connection.

LEARN MORE: http://docs.aws.amazon.com/AmazonVPC/latest/UserGuide/VPN_CloudHub.html
***
Before you start using Elastic Load Balancing(ELB), you have to configure the listeners for your load balancer. A listener is a process that listens for connection requests. It is configured with a protocol and a port number for front-end (client to load balancer) and back-end (load balancer to back-end instance) connections.  
**Elastic Load Balancing supports the load balancing of applications using HTTP, HTTPS (secure HTTP), TCP, and SSL (secure TCP) protocols.** The HTTPS uses the SSL protocol to establish secure connections over the HTTP layer. You can also use SSL protocol to establish secure connections over the TCP layer.  
The acceptable ports for both HTTPS/SSL and HTTP/TCP connections are 25, 80, 443, 465, 587, and 1024-65535.  
LEARN MORE: http://docs.aws.amazon.com/ElasticLoadBalancing/latest/DeveloperGuide/elb-listener-config.html
***
With DNS Failover, Amazon Route 53 can help detect an outage of your website and redirect your end users to alternate locations where your application is operating properly. When you enable this feature, Route 53 uses health checks—regularly making Internet requests to your application’s endpoints from multiple locations around the world—to determine whether each endpoint of your application is up or down.  
To enable DNS Failover for an ELB endpoint, create an Alias record pointing to the ELB and set the “Evaluate Target Health” parameter to true. Route 53 creates and manages the health checks for your ELB automatically. You do not need to create your own Route 53 health check of the ELB. You also do not need to associate your resource record set for the ELB with your own health check, because Route 53 automatically associates it with the health checks that Route 53 manages on your behalf. The ELB health check will also inherit the health of your backend instances behind that ELB.   
LEARN MORE: https://aws.amazon.com/blogs/aws/amazon-route-53-elb-integration-dns-failover/
***
Amazon Elastic Load Balancing is used to manage traffic on a fleet of Amazon EC2 instances, distributing traffic to instances across all availability zones within a region. Elastic Load Balancing has all the advantages of an on-premises load balancer, plus several security benefits:  
* Takes over the encryption and decryption work from the Amazon EC2 instances and manages it centrally on the load balancer
* Offers clients a single point of contact, and can also serve as the first line of defense against attacks on your network
* When used in an Amazon VPC, supports creation and management of security groups associated with your Elastic Load Balancing to provide additional networking and security options
*  Supports end-to-end traffic encryption using TLS (previously SSL) on those networks that use secure HTTP (HTTPS) connections. When TLS is used, the TLS server certificate used to terminate client connections can be managed centrally on the load balancer, rather than on every individual instance.  
LEARN MORE: http://d0.awsstatic.com/whitepapers/Security/AWS%20Security%20Whitepaper.pdf
***
You can seamlessly join an EC2 instance to your directory domain when the instance is launched using the Amazon EC2 Simple Systems Manager. If you need to manually join an EC2 instance to your domain, you must launch the instance in the proper region and security group or subnet, then join the instance to the domain. To be able to connect remotely to these instances, you must have IP connectivity to the instances from the network you are connecting from. In most cases, this requires that an Internet gateway be attached to your VPC and that the instance has a public IP address.

LEARN MORE: http://docs.aws.amazon.com/directoryservice/latest/admin-guide/join_a_directory.html
***

## Storage
***
When modifying EBS snapshot permissions with AWS Console, one of the options is to make the snapshot public or not. However, snapshots with AWS Marketplace product codes can't be made public.

LEARN MORE: http://docs.amazonwebservices.com/AWSEC2/latest/UserGuide/ebs-modifying-snapshot-permissions.html
***
When using Amazon Import/Export, a separate job request needs to be submitted for each physical device even if they belong to the same import or export job.

LEARN MORE: http://docs.aws.amazon.com/AWSImportExport/latest/DG/Concepts.html
***
For protecting the Amazon EBS data at REST, the user can use options, such as **Data Encryption** (Windows / Linux / third party based), **Data Replication** (AWS internally replicates data for redundancy), and **Data Snapshot** (for point in time backup).

LEARN MORE: http://media.amazonwebservices.com/AWS_Security_Best_Practices.pdf
***
Amazon EBS volumes are designed for an annual failure rate (AFR) of between 0.1% - 0.2%, where failure refers to a complete or partial loss of the volume, depending on the size and performance of the volume. This makes EBS volumes 20 times more reliable than typical commodity disk drives, which fail with an AFR of around 4%. For example, if you have 1,000 EBS volumes running for 1 year, you should expect 1 to 2 will have a failure. EBS also supports a snapshot feature, which is a good way to take point-in-time backups of your data.

LEARN MORE: https://aws.amazon.com/ebs/details/
***
AWS Import/Export supports:  
Import to Amazon S3  
Export from Amazon S3  
Import to Amazon EBS  
Import to Amazon Glacier  
AWS Import/Export does not currently support export from Amazon EBS or Amazon Glacier.  
LEARN MORE: https://docs.aws.amazon.com/AWSImportExport/latest/DG/whatisdisk.html
***
When you create a snapshot of a Throughput Optimized HDD (st1) or Cold HDD (sc1) volume, performance may drop as far as the volume's baseline value while the snapshot is in progress. This behavior is specific to these volume types. 

LEARN MORE: http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/EBSPerformance.html
***
Multipart upload in Amazon S3 allows you to upload a single object as a set of parts. Each part is a contiguous portion of the object's data. You can upload these object parts independently and in any order. If transmission of any part fails, you can re-transmit that part without affecting other parts. After all parts of your object are uploaded, Amazon S3 assembles these parts and creates the object. In general, when your object size reaches 100 MB, you should consider using multipart uploads instead of uploading the object in a single operation.

Using multipart upload provides the following advantages:

1. Improved throughput—You can upload parts in parallel to improve throughput.
1. Quick recovery from any network issues—Smaller part size minimizes the impact of restarting a failed upload due to a network error.
1. Pause and resume object uploads—You can upload object parts over time. Once you initiate a multipart upload there is no expiry; you must explicitly complete or abort the multipart upload.
1. Begin an upload before you know the final object size—You can upload an object as you are creating it.
LEARN MORE: http://docs.aws.amazon.com/AmazonS3/latest/dev/uploadobjusingmpu.html
***
With Amazon EBS, you can use any of the standard RAID configurations that you can use with a traditional bare metal server, as long as that particular RAID configuration is supported by the operating system for your instance. This is because all RAID is accomplished at the software level. For greater I/O performance than you can achieve with a single volume, RAID 0 can stripe multiple volumes together; for on-instance redundancy, RAID 1 can mirror two volumes together.

RAID 5 and RAID 6 are not recommended for Amazon EBS because the parity write operations of these RAID modes consume some of the IOPS available to your volumes.

LEARN MORE: http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/raid-config.html
***
Amazon S3 encrypts your object before saving it on disks in its data centers and decrypts it when you download the objects. You have two options depending on how you choose to manage the encryption keys: Server-side encryption and client-side encryption.

Server-side encryption is about data encryption at rest—that is, Amazon S3 encrypts your data as it writes it to disks in its data centers and decrypts it for you when you access it. As long as you authenticate your request and you have access permissions, there is no difference in the way you access encrypted or unencrypted objects. Amazon S3 manages encryption and decryption for you. For example, if you share your objects using a pre-signed URL, that URL works the same way for both encrypted and unencrypted objects.

In client-side encryption, you manage encryption/decryption of your data, the encryption keys, and related tools. Server-side encryption is an alternative to client-side encryption in which Amazon S3 manages the encryption of your data, freeing you from the tasks of managing encryption and encryption keys.

Amazon S3 server-side encryption employs strong multi-factor encryption. Amazon S3 encrypts each object with a unique key. As an additional safeguard, it encrypts the key itself with a master key that it regularly rotates. Amazon S3 server-side encryption uses one of the strongest block ciphers available, 256-bit Advanced Encryption Standard (AES-256), to encrypt your data.

LEARN MORE: http://docs.aws.amazon.com/AmazonS3/latest/dev/UsingServerSideEncryption.html
***
AWS Storage Gateway connects an on-premises software appliance with cloud-based storage to provide seamless integration with data security features between your on-premises IT environment and the Amazon Web Services (AWS) storage infrastructure. **You can use the service to store data in the AWS cloud for scalable and cost-effective storage that helps maintain data security.** AWS Storage Gateway offers both volume-based and tape-based storage solutions:
* Volume gateways
* Gateway-cached volumes 
* Gateway-stored volumes 
* Gateway–virtual tape library (VTL) 
LEARN MORE: http://media.amazonwebservices.com/architecturecenter/AWS_ac_ra_disasterrecovery_07.pdf
***
When you plan and configure EBS volumes for your application, it is important to consider the configuration of the instances that you will attach the volumes to. In order to get the most performance out of your EBS volumes, you should attach them to an instance with enough bandwidth to support your volumes, such as an EBS-optimized instance or an instance with 10 Gigabit network connectivity. This is especially important when you use General Purpose (SSD) or Provisioned IOPS (SSD) volumes, or when you stripe multiple volumes together in a RAID configuration.

LEARN MORE: http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ebs-ec2-config.html
***
In EBS workload demand plays an important role in getting the most out of your General Purpose (SSD) and Provisioned IOPS (SSD) volumes. In order for your volumes to deliver the amount of IOPS that are available, they need to have enough I/O requests sent to them. There is a relationship between the demand on the volumes, the amount of IOPS that are available to them, and the latency of the request (the amount of time it takes for the I/O operation to complete).

Latency is the true end-to-end client time of an I/O operation; in other words, when the client sends a IO, how long does it take to get an acknowledgement from the storage subsystem that the IO read or write is complete.

**If your I/O latency is higher than you require, check your average queue length** to make sure that your application is not trying to drive more IOPS than you have provisioned. You can maintain high IOPS while keeping latency down by maintaining a low average queue length (which is achieved by provisioning more IOPS for your volume).

LEARN MORE: http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/EBSVolumes.html
***
Volume gateways provide cloud-backed storage volumes that you can mount as Internet Small Computer System Interface (iSCSI) devices from your on-premises application servers. The gateway supports the following volume configurations:

* Cached Volumes – You store your data in Amazon Simple Storage Service (Amazon S3) and retain a copy of frequently accessed data subsets locally. Cached volumes offer a substantial cost savings on primary storage and minimize the need to scale your storage on-premises. You also retain low-latency access to your frequently accessed data.

* Stored Volumes – If you need low-latency access to your entire data set, you can configure your on-premises gateway to store all your data locally and then asynchronously backup point-in-time snapshots of this data to Amazon S3. This configuration provides durable and inexpensive off-site backups that you can recover to your local data center or Amazon EC2. For example, if you need replacement capacity for disaster recovery, you can recover the backups to Amazon EC2.

LEARN MORE: http://docs.aws.amazon.com/storagegateway/latest/userguide/volume-gateway.html
***
The AWS Storage Gateway is a service connecting an on-premises software appliance with cloud-based storage to provide seamless and secure integration between an organization’s on-premises IT environment and AWS’s storage infrastructure.

AWS Storage Gateway billing is as follows.

**Volume storage usage (per GB per month):**  
You are billed for the Cached volume data you store in Amazon S3. You are only billed for volume capacity you use, not for the size of the volume you create.

**Snapshot Storage usage (per GB per month):**  
You are billed for the snapshots your gateway stores in Amazon S3. These snapshots are stored and billed as Amazon EBS snapshots. Snapshots are incremental backups, reducing your storage charges. When taking a new snapshot, only the data that has changed since your last snapshot is stored.

**Virtual Tape Library usage (per GB per month):**  
For Virtual Tape Library, you are billed for the virtual tape data you store in Amazon S3. You are only billed for the portion of virtual tape capacity that you use, not for the size of the virtual tape.

**Virtual Tape Shelf usage (per GB per month):**  
For Virtual Tape Shelf, you are billed for the virtual tape data you store in Amazon Glacier. You are only billed for the portion of virtual tape capacity that you use, not for the size of the virtual tape.

Note: Virtual tape shelf is backed by Amazon Glacier whereas virtual tape library is backed by Amazon S3.

LEARN MORE: https://aws.amazon.com/storagegateway/faqs/
***

## Security
***
In relation to AWS CloudHSM, High-availability (HA) recovery is hands-off resumption by failed HA group members.
Prior to the introduction of this function, the HA feature provided redundancy and performance, but required that a failed/lost group member be manually reinstated.

LEARN MORE: http://docs.aws.amazon.com/cloudhsm/latest/userguide/ha-best-practices.html
***
In AWS CloudHSM, you can perform a remote backup/restore of a Luna SA partition if you have purchased a Luna Backup HSM. 

LEARN MORE: http://docs.aws.amazon.com/cloudhsm/latest/userguide/cloud-hsm-backup-restore.html
***

## Database
***
The core components of DynamoDB are:  
* "Table", a collection of Items;
* "Items", with Keys and one or more Attribute;
* "Attribute", with Name and Value.  
LEARN MORE: http://docs.aws.amazon.com/amazondynamodb/latest/developerguide/HowItWorks.CoreComponents.html
***
Amazon DynamoDB supports fast in-place updates. You can increment or decrement a numeric attribute in a row using a single API call. Similarly, you can atomically add or remove to sets, lists, or maps.

LEARN MORE: http://docs.aws.amazon.com/amazondynamodb/latest/developerguide/WorkingWithItems.html#WorkingWithItems.AtomicCounters
***
Each reserved RDS instance is associated with a specific Region, which is fixed for the lifetime of the reservation and cannot be changed. Each reservation can, however, be used in any of the available AZs within the associated Region.

LEARN MORE: https://aws.amazon.com/rds/faqs/
***
FGAC can benefit any application that tracks information in a DynamoDB table, where the end user (or application client acting on behalf of an end user) wants to read or modify the table directly, without a middle-tier service. For instance, a developer of a mobile app named Acme can use FGAC to track the top score of every Acme user in a DynamoDB table. FGAC allows the application client to modify only the top score for the user that is currently running the application.

LEARN MORE: http://aws.amazon.com/dynamodb/faqs/#security_anchor
***
If your DB instance and EC2 instance are not in the same VPC, you must configure the DB instance's security group with an ingress rule that allows traffic from the Amazon EC2 instance. You would do this by adding the Amazon EC2 security group, or CIDR IP ranges for the EC2 instance, to the DB security group for the DB instance. In this example, you add an ingress rule to a DB security group for an Amazon EC2 Public IP.

LEARN MORE: http://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/USER_WorkingWithSecurityGroups.html
***
Amazon Redshift delivers fast query performance by using columnar storage technology to improve I/O efficiency and parallelizing queries across multiple nodes. Redshift uses standard PostgreSQL JDBC and ODBC drivers, allowing you to use a wide range of familiar SQL clients. Data load speed scales linearly with cluster size, with integrations to Amazon S3, Amazon DynamoDB, Amazon Elastic MapReduce, Amazon Kinesis or any SSH-enabled host.

AWS recommends Amazon Redshift for customers who have a combination of needs, such as:

* High performance at scale as data and query complexity grows
* Desire to prevent reporting and analytic processing from interfering with the performance of OLTP workloads
* Large volumes of structured data  to persist and query using standard SQL and existing BI tools
* Desire to the administrative burden of running one's own data warehouse and dealing with setup, durability, monitoring, scaling and patching
LEARN MORE: https://aws.amazon.com/running_databases/#redshift_anchor
***
Amazon Relational Database Service (Amazon RDS) is a managed service that makes it easy to set up, operate, and scale a relational database in the cloud. It provides cost-efficient and resizable capacity, while managing time-consuming database administration tasks, freeing you up to focus on your applications and business.

When you create or modify your DB Instance to run as a Multi-AZ deployment, Amazon RDS automatically provisions and maintains a synchronous “standby” replica in a different Availability Zone. 
Updates to your DB Instance are synchronously replicated across Availability Zones to the standby in order to keep both in sync and protect your latest database updates against DB Instance failure. 
During certain types of planned maintenance, or in the unlikely event of DB Instance failure or Availability Zone failure, Amazon RDS will automatically failover to the standby so that you can resume database writes and reads as soon as the standby is promoted. Since the name record for your DB Instance remains the same, you application can resume database operation without the need for manual administrative intervention. With Multi-AZ deployments, replication is transparent: you do not interact directly with the standby, and it cannot be used to serve read traffic. If you are using Amazon RDS for MySQL and are looking to scale read traffic beyond the capacity constraints of a single DB Instance, you can deploy one or more Read Replicas.

LEARN MORE: http://aws.amazon.com/rds/faqs/
***
Amazon EMR provides several tools to monitor the performance of your cluster.

* Hadoop Web Interfaces  
Every cluster publishes a set of web interfaces on the master node that contain information about the cluster. You can access these web pages by using an SSH tunnel to connect them on the master node. For more information, see View Web Interfaces Hosted on Amazon EMR Clusters.

* CloudWatch Metrics  
Every cluster reports metrics to CloudWatch. CloudWatch is a web service that tracks metrics, and which you can use to set alarms on those metrics. For more information, see Monitor Metrics with CloudWatch.

* Ganglia  
Ganglia is a cluster monitoring tool. To have this available, you have to install Ganglia on the cluster when you launch it. After you've done so, you can monitor the cluster as it runs by using an SSH tunnel to connect to the Ganglia UI running on the master node. For more information, see Monitor Performance with Ganglia.

LEARN MORE: http://docs.aws.amazon.com/emr/latest/ManagementGuide/emr-manage-view.html
***
Managing and analyzing high data volumes produced by online games platforms can be difficult. The back-end infrastructures of online games can be challenging to maintain and operate. Peak usage periods, multiple players, and high volumes of write operations are some of the most common problems that operations teams face.

Amazon Elastic MapReduce (Amazon EMR) is a service that processes vast amounts of data easily. Input data can be retrieved from web server logs stored on Amazon S3 or from player data stored in Amazon DynamoDB tables to run analytics on player behavior, usage patterns, etc. Those results can be stored again on Amazon S3, or inserted in a relational database for further analysis with classic business intelligence tools.

LEARN MORE: http://media.amazonwebservices.com/architecturecenter/AWS_ac_ra_games_10.pdf
***
DynamoDB supports two types of secondary indexes:  
* Local secondary index — an index that has the same hash key as the table, but a different range key. A local secondary index is "local" in the sense that every partition of a local secondary index is scoped to a table partition that has the same hash key.
* Global secondary index — an index with a hash and range key that can be different from those on the table. A global secondary index is considered "global" because queries on the index can span all of the data in a table, across all partitions.  
LEARN MORE: http://docs.aws.amazon.com/amazondynamodb/latest/developerguide/SecondaryIndexes.html
***
Amazon Elastic Map Reduce (EMR) is a web service that enables businesses, researchers, data analysts, and developers to easily and cost-effectively process vast amounts of data.

Amazon EMR historically referred to an Amazon EMR cluster (and all processing steps assigned to it) as a "cluster". Every cluster has a unique identifier that starts with "j-".

The different cluster states of an Amazon EMR cluster are listed below.

* STARTING – The cluster provisions, starts, and configures EC2 instances.
* BOOTSTRAPPING – Bootstrap actions are being executed on the cluster.
* RUNNING – A step for the cluster is currently being run.
* WAITING – The cluster is currently active, but has no steps to run.
* TERMINATING - The cluster is in the process of shutting down.
* TERMINATED - The cluster was shut down without error.
* TERMINATED_WITH_ERRORS - The cluster was shut down with errors.

LEARN MORE: https://aws.amazon.com/elasticmapreduce/faqs/
***
Amazon Redshift achieves efficient storage and optimum query performance through a combination of massively parallel processing, columnar data storage, and very efficient, targeted data compression encoding schemes.

Columnar storage for database tables is an important factor in optimizing analytic query performance because it drastically reduces the overall disk I/O requirements and reduces the amount of data you need to load from disk.

LEARN MORE: http://docs.aws.amazon.com/redshift/latest/dg/c_columnar_storage_disk_mem_mgmnt.html
***
An archive is a durably stored block of information. You store your data in Amazon Glacier as archives. You may upload a single file as an archive, but your costs will be lower if you aggregate your data.

* TAR and ZIP are common formats that customers use to aggregate multiple files into a single file before uploading to Amazon Glacier.
* The total volume of data and number of archives you can store are unlimited. Individual Amazon Glacier archives can range in size from 1 byte to 40 terabytes.
* The largest archive that can be uploaded in a single upload request is 4 gigabytes.
* For items larger than 100 megabytes, customers should consider using the Multipart upload capability.
* Archives stored in Amazon Glacier are immutable, i.e. archives can be uploaded and deleted but cannot be edited or overwritten.
LEARN MORE: https://aws.amazon.com/glacier/faqs/
***

## Miscellaneous
***
Amazon Simple Queue Service (Amazon SQS) is a messaging queue service that handles message or workflows between other components in a system.

Amazon SQS supports an unlimited number of queues, and 120,000 messages per queue for each user. Please be aware that Amazon SQS automatically deletes messages that have been in the queue for more than 14 days.

LEARN MORE: http://aws.amazon.com/documentation/sqs/
***
In AWS it is critical to build a scalable architecture in order to take advantage of a scalable infrastructure. The cloud is designed to provide conceptually infinite scalability. However, you cannot leverage all that scalability in infrastructure if your architecture is not scalable. Both have to work together. You will have to identify the monolithic components and bottlenecks in your architecture, identify the areas where you cannot leverage the on-demand provisioning capabilities in your architecture, and work to refactor your application, in order to leverage the scalable infrastructure and take advantage of the cloud.

Characteristics of a truly scalable application:

* Increasing resources results in a proportional increase in performance
* A scalable service is capable of handling heterogeneity
* A scalable service is operationally efficient
* A scalable service is resilient
* A scalable service should become more cost effective when it grows (Cost per unit reduces as the number of units increases)
LEARN MORE: http://media.amazonwebservices.com/AWS_Cloud_Best_Practices.pdf
***
You grant AWS Lambda permission to access a DynamoDB Stream using an IAM role known as the “execution role”. 

LEARN MORE: http://docs.aws.amazon.com/lambda/latest/dg/intro-permission-model.html
***
**DomainKeys Identified Mail (DKIM)** is a standard that allows senders to sign their email messages and ISPs, and use those signatures to verify that those messages are legitimate and have not been modified by a third party in transit.

LEARN MORE: http://docs.aws.amazon.com/ses/latest/DeveloperGuide/dkim.html
***
**Amazon Simple Notification Service (Amazon SNS)** is a fast, flexible, and fully managed push messaging service. Amazon SNS makes it simple and cost-effective to push to mobile devices, such as iPhone, iPad, Android, Kindle Fire, and internet connected smart devices, as well as pushing to other distributed services.

LEARN MORE: http://aws.amazon.com/sns
***
Third-party software support is available only to AWS Support customers enrolled for Business or Enterprise Support. Third-party support applies only to software running on Amazon EC2 and does not extend to assisting with on-premises software. An exception to this is a VPN tunnel configuration running supported devices for Amazon VPC.

LEARN MORE: https://aws.amazon.com/premiumsupport/features/
***
Within Amazon EC2, when using a Linux instance, the device name /dev/sda1 is reserved for the root device. Another device name, /dev/xvda, is also reserved for certain Linux root devices.

LEARN MORE: http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/device_naming.html
***
Amazon Simple Email Service (Amazon SES) is a highly scalable and cost-effective email-sending service for businesses and developers. Amazon SES eliminates the complexity and expense of building an in-house email solution or licensing, installing, and operating a third-party email service for this type of email communication.

Every Amazon SES sender has a unique set of sending limits, which are calculated by Amazon SES on an ongoing basis:

Sending quota — the maximum number of emails you can send in a 24-hour period.

Maximum send rate — the maximum number of emails you can send per second.

New Amazon SES users start in the Amazon SES sandbox, which is a test environment that has a sending quota of 1,000 emails per 24-hour period, at a maximum rate of 1 email per second..

Sending limits are based on recipients rather than on messages. You can check your sending limits at any time by using the Amazon SES console.

Note that if your email is detected to be of poor or questionable quality (e.g., high complaint rates, high bounce rates, spam, or abusive content), Amazon SES might temporarily or permanently reduce your permitted send volume, or take other action as AWS deems appropriate.

LEARN MORE: https://aws.amazon.com/ses/faqs/
***
AWS Certificate Manager is a service that lets you easily provision, manage, and deploy Secure Sockets Layer/Transport Layer Security (SSL/TLS) certificates for use with AWS services. SSL/TLS certificates are used to secure network communications and establish the identity of websites over the Internet

LEARN MORE: https://aws.amazon.com/certificate-manager/
***