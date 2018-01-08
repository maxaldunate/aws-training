# Bookmarks Study

## Compute

***
By launching your instances into a VPC instead of EC2-Classic, you can optionally associate an IPv6 CIDR block with your VPC, and assign IPv6 addresses to instances in your VPC. Both EC2-Classic and EC2-VPC enable DNS hostnames by default. With VPC, a security group can reference security groups for your VPC only, and you can assign up to five security groups to an instance.

***
Previously, if you launched an instance for 5 minutes, you would pay for 1 hour. If you launched an instance for 45 minutes, you would also pay for 1 hour. This means that partial hours cost as much as one full hour. Pricing is per instance-hour consumed for each instance, from the time an instance is launched until it is terminated or stopped. Each partial instance-hour consumed will be billed as a full hour.

With EC2 services now billed per-second  in some cases, as well as per-hour in others as of October 2, 2017, there is more to consider. Amazon AWS is still based on the concept of pay-as-you-go. You pay Amazon EC2 instances by the second for all instance types except Dedicated Host, which is still billed per instance-hour. You are billed per second when using Linux operating systems with no separate hourly charge, and billed per hour when using Windows operating systems.

LEARN MORE: http://aws.amazon.com/ec2/pricing/

***
A block device is a storage device that moves data in sequences of bytes or bits (blocks). These devices support random access and generally use buffered I/O. Examples include hard disks, CD-ROM drives, and flash drives. A block device can be physically attached to a computer or accessed remotely as if it were physically attached to the computer. Amazon EC2 supports two types of block devices:

Amazon EC2 supports two types of block devices.

Instance store volumes (virtual devices whose underlying hardware is physically attached to the host computer for the instance)
EBS volumes (remote storage devices)
The SSD, HDD and Magnetic choices are all options for the type of storage offered via EBS volumes. They are not types of block devices.

LEARN MORE: http://docs.amazonwebservices.com/AWSEC2/latest/UserGuide/block-device-mapping-concepts.html

***
By default, Amazon EBS root device volumes are automatically deleted when the instance terminates.

LEARN MORE: http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/terminating-instances.html

***
You can use AWS CloudFormation’s sample templates or create your own templates to describe the AWS resources, and any associated dependencies or runtime parameters, required to run your application.

In the following example, the output named BackupLoadBalancerDNSName returns the DNS name for the resource with the logical ID BackupLoadBalancer only when the CreateProdResources condition is true. (The second output shows how to specify multiple outputs.)

```js
"Outputs" : {
"BackupLoadBalancerDNSName" : {
"Description": "The DNSName of the backup load balancer",
"Value" : { "Fn::GetAtt" : [ "BackupLoadBalancer", "DNSName" ]},
"Condition" : "CreateProdResources"
},
"InstanceID" : {
"Description": "The Instance ID",
"Value" : { "Ref" : "EC2Instance" }
}
}
```
LEARN MORE: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/outputs-section-structure.htmlxx

***
Auto Scaling is well suited to both applications that have stable demand patterns and that experience hourly, daily, or weekly variability in usage. Whether the demand is predictable or unpredictable auto scaling can be a good choice. If the demand is predictable and long term you may choose reserved instances. If the demand is unpredictable you may choose on-demand or even spot instance (if you can afford to have an instance lost unexpectedly).

LEARN MORE: http://aws.amazon.com/autoscaling/

***
Auto Scaling supports three types of scaling:

1. Manual scaling
2. Scaling based on condition (e.g. CPU utilization is up or down, etc.)
3. Scaling based on time (e.g. First day of the quarter, 6 am every day, etc.)

LEARN MORE: http://docs.aws.amazon.com/AutoScaling/latest/DeveloperGuide/scaling_plan.html

***
As per AWS SLA if the instance is attached to an EBS-Optimized instance, then the Provisioned IOPS volumes are designed to deliver within 10% of the provisioned IOPS performance 99.9% of the time in a given year. Thus, if the user has created a volume of 1000 IOPS, the user will get a minimum 900 IOPS 99.9% time of the year.

LEARN MORE: http://aws.amazon.com/ec2/faqs/

***
In general, when an instance launched from an AMI using an instance-store backed root device fails to boot, you have no options other than launching a replacement instance. If you’re running an instance from an AMI that downloads scripts during the boot process, you may be able to modify the scripts to correct any errors you’re seeing in the console output.

LEARN MORE: http://aws.amazon.com/instance-help/

***
After 11 years, AWS announced a change to its payment structure for EC2 and EBS services effective October 2, 2017. Assuming a Linux operating system without separate hourly charges is in use, partial instance-hours are billed to the next hour for Dedicated instances only. With the same assumption in mind, Reserved, Spot and On-Demand instances are now billed on a per-second basis, with a one-minute minimum charge.

LEARN MORE: https://aws.amazon.com/blogs/aws/new-per-second-billing-for-ec2-instances-and-ebs-volumes/

***
Billing commences when Amazon EC2 initiates the boot sequence of an AMI instance. Billing ends when the instance terminates, which could occur through a web services command, by running "shutdown -h", or through instance failure. When you stop an instance, Amazon shuts it down but doesn't charge per-second or per-hour usage for a stopped instance, or data transfer fees, but charges for the storage for any Amazon EBS volumes.

LEARN MORE: http://aws.amazon.com/ec2/faqs/

***
If you just specify the general endpoint (autoscaling.amazonaws.com), Auto Scaling directs your request to the us-east-1 endpoint.

LEARN MORE: http://docs.aws.amazon.com/general/latest/gr/rande.html

* There are 20 Reserved Instances per Availability Zone in each month.

LEARN MORE: http://docs.aws.amazon.com/general/latest/gr/aws_service_limits.html

* The cool down period is the time difference between the end of one scaling activity (can be start or terminate) and the start of another one (can be start or terminate). During the cool down period, Auto Scaling does not allow the desired capacity of the Auto Scaling group to be changed by any other CloudWatch alarm. Thus, in this case the trigger from the second alarm will have no effect.

LEARN MORE: http://docs.aws.amazon.com/AutoScaling/latest/DeveloperGuide/AS_Concepts.html#healthcheck

* If an Auto Scaling group is launching more than one instance, the cool down period for each instance starts after that instance is launched. The group remains locked until the last instance that was launched has completed its cool down period. In this case the cool down period for the first instance starts after 3 minutes and finishes at the 10th minute (3+7 cool down), while for the second instance it starts at the 4th minute and finishes at the 11th minute (4+7 cool down). Thus, the Auto Scaling group will receive another request only after 11 minutes.

LEARN MORE: http://docs.aws.amazon.com/AutoScaling/latest/DeveloperGuide/AS_Concepts.html

* Auto Scaling protects instances from termination during scale-in events. This means that Auto Scaling instance protection will receive the CloudWatch trigger  to delete instances, and delete instances in the Auto Scaling group that do not have instance protection enabled. However, instance protection won't protect Spot instance termination triggered due to market price exceeding bid price.

LEARN MORE: http://docs.aws.amazon.com/autoscaling/latest/userguide/as-instance-termination.html#instance-protection

* You can take advantage of the safety and reliability of geographic redundancy by spanning your Auto Scaling group across multiple Availability Zones within a region and then attaching a load balancer to distribute incoming traffic across those Availability Zones. Incoming traffic is distributed equally across all Availability Zones enabled for your load balancer.
LEARN MORE: http://docs.aws.amazon.com/AutoScaling/latest/DeveloperGuide/GettingStartedTutorial.html

* You can create an Auto Scaling group directly from an EC2 instance. When you use this feature, Auto Scaling automatically creates a launch configuration for you as well.

LEARN MORE: http://docs.aws.amazon.com/AutoScaling/latest/DeveloperGuide/create-lc-with-instanceID.html

* AWS Auto Scaling supports both detailed as well as basic monitoring of the CloudWatch metrics. Basic monitoring happens every 5 minutes, while detailed monitoring happens every minute. It supports 8 metrics and 1 dimension.
The metrics are:

1. GroupMinSize
1. GroupMaxSize
1. GroupDesiredCapacity
1. GroupInServiceInstances
1. GroupPendingInstances
1. GroupStandbyInstances
1. GroupTerminatingInstances
1. GroupTotalInstances
The dimension is AutoScalingGroupName


LEARN MORE: http://docs.aws.amazon.com/AmazonCloudWatch/latest/DeveloperGuide/supported_services.html

* Auto Scaling can start and stop the instance at a pre-defined time. Here, the total running time is unknown. Thus, the user has to use the CloudWatch alarm, which monitors the CPU utilization. The user can create an alarm that is triggered when the average CPU utilization percentage has been lower than 10 percent for 24 hours, signaling that it is idle and no longer in use. When the utilization is below the threshold limit, it will terminate the instance as a part of the instance action.

LEARN MORE: http://docs.aws.amazon.com/AmazonCloudWatch/latest/DeveloperGuide/UsingAlarmActions.html

* All traffic should be routed via Internet Gateway. So, a route should be created with 0.0.0.0/0 as a source, and your Internet Gateway as your target.

LEARN MORE: http://docs.aws.amazon.com/AmazonVPC/latest/UserGuide/VPC_Scenario1.html

* A placement group is a logical grouping of instances within a single Availability Zone. Placement groups are recommended for applications that benefit from low network latency, high network throughput, or both.

LEARN MORE: http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/placement-groups.html

* When you launch an EC2 instance, select a region that puts your instances closer to specific customers, or meets the legal or other requirements you have. By launching your instances in separate Availability Zones, you can protect your applications from the failure of a single location.
When you launch an instance, you can optionally specify an Availability Zone in the region that you are using. If you do not specify an Availability Zone, we select one for you. When you launch your initial instances, we recommend that you accept the default Availability Zone, because this enables us to select the best Availability Zone for you based on system health and available capacity. If you launch additional instances, only specify an Availability Zone if your new instances must be close to, or separated from, your running instances.

LEARN MORE: http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/using-regions-availability-zones.html#using-regions-availability-zones-launching

* For Amazon Web Services, the reserved instance (standard or convertible) helps the user save money if the user is going to run the same instance for a longer period. Generally if the user uses the instances around 30-40% of the year annually it is recommended to use RI. Here as the instance runs only for 1 hour  50 minutes daily, or less than 8 percent of the year, it is not recommended to have RI as it will be costlier. At its highest potential savings, you are still paying 25 percent of an annual cost for a reserved instance you are you using less than 2 hours a day, (or less than 8 percent of each year) you are not saving money.

Even a scheduled reserved instance has a key limitation, which is that it cannot be stopped or rebooted, only manually terminated with a possibility that it could be restarted. You would have to terminate and restart it within the 1 hour 50 minute window, otherwise you would need to wait until the next day. For a critical daily process, this is likely not an option.

Spot Instances are not ideal because the process is critical, and must run for a fixed length of time at a fixed time of day. Spot instances would stop and start based on fluctuations in instance pricing, leaving this process potentially unfinished.

The user should use on-demand with EBS in this case. While it has the highest cost, it also has the greatest flexibility to ensure that a critical process like this is always completed.

LEARN MORE: http://aws.amazon.com/ec2/purchasing-options/reserved-instances/

* Access to Amazon S3 from within Amazon EC2 in the same region is fast. In this aspect, though the client base is Singapore, the application is being hosted in the US West-1 region. Thus, it is recommended that S3 objects be stored in the US-West-1 region.

LEARN MORE: https://d0.awsstatic.com/whitepapers/Storage/aws-storage-options.pdf

* Regarding Amazon EC2, when launching an instance, the user needs to select the region the instance would be launched from. While launching, the user needs to plan for the instance type and the OS of the instance. 

LEARN MORE: http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ec2-launch-instance_linux.html

* A user can share an AMI with another user / peer using the command: ec2-modify-image-attribute <AMI-ID> -l -a <AWS Account ID>

LEARN MORE: http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/sharingamis-explicit.html

* A placement group is a logical grouping of EC2 instances within a single Availability Zone. Using placement groups enables applications to participate in a low-latency, 10 Gbps network. Placement groups are recommended for applications that benefit from low network latency, high network throughput or both.

LEARN MORE: http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/placement-groups.html

* AutoScaling attempts to distribute instances evenly between the Availability Zones that are enabled for the user’s AutoScaling group. Auto Scaling does this by attempting to launch new instances in the Availability Zone with the fewest instances.

LEARN MORE: http://docs.aws.amazon.com/AutoScaling/latest/DeveloperGuide/AS_Concepts.html

* The Manual Scaling as part of Auto Scaling allows the user to change the capacity of Auto Scaling group. The user can add / remove EC2 instances on the fly. To execute manual scaling, the user should modify the desired capacity. AutoScaling will adjust instances as per the requirements.  

LEARN MORE: http://docs.aws.amazon.com/AutoScaling/latest/DeveloperGuide/as-manual-scaling.html

* The user can configure the AutoScaling group to automatically scale up and then scale down based on  the various specified CloudWatch monitoring conditions.  The user needs to provide the adjustment value and the adjustment type. A positive adjustment value increases the current capacity and a negative adjustment value decreases the current capacity. The user can express the change to the current size as an absolute number, an increment or as a percentage of the current group size.

In this option specifying the exact capacity with the adjustment value = -8 will not work as when type is exact capacity the adjustment value cannot be negative.

LEARN MORE: http://docs.aws.amazon.com/AutoScaling/latest/DeveloperGuide/as-scale-based-on-demand.html

* Each AWS region has multiple, isolated locations known as Availability Zones. To ensure that the AWS resources are distributed across the Availability Zones for a region, AWS independently maps the Availability Zones to identifiers for each account. In this case the Availability Zone US-East-1a where George’s EC2 instances are running might not be the same location as the US-East-1a zone of Ray’s EC2 instances. There is no way for the user to coordinate the Availability Zones between accounts.  

LEARN MORE: http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/using-regions-availability-zones.html

* When the user account has reached the maximum number of EC2 instances, it will not be allowed to launch an instance. AWS will throw an ‘InstanceLimitExceeded’ error. For all other reasons, such as “AMI is missing part”, “Corrupt Snapshot” or ”Volume limit has reached” it will launch an EC2 instance and then terminate it.

LEARN MORE: http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/Using_InstanceStraightToTerminated.html

* An EC2 instance, once terminated, may be available in the AWS console for a while after termination. The user can find the details about the termination from the description tab under the label State transition reason. If the instance is still running, there will be no reason listed. If the user has explicitly stopped or terminated the instance, the reason will be “User initiated shutdown”.  

LEARN MORE: http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/Using_InstanceStraightToTerminated.html

* AWS security follows the shared security model where the user is as much responsible as Amazon. Since Amazon is a public cloud it is bound to be targeted by hackers. If an organization is planning to host their application on Amazon EC2, they should perform the below mentioned security checks as a measure to find any security weakness/data leaks:

  * Perform penetration testing as performed by attackers to find any vulnerability. The organization must take an approval from AWS before performing penetration testing
  * Perform hardening testing to find if there are any unnecessary ports open
  * Perform SQL injection to find any DB security issues
  * The code memory checks are generally useful when the organization wants to improve the application performance.
  
LEARN MORE: http://aws.amazon.com/security/penetration-testing/

* Since AWS is a public cloud any application hosted on EC2 is prone to hacker attacks. It becomes extremely important for a user to setup a proper security mechanism on the EC2 instances. A few of the security measures are listed below:

Always keep the OS updated with the latest patch
Always create separate users with in OS if they need to connect with the EC2 instances, create their keys and disable their password
Create a procedure using which the admin can revoke the access of the user when the business work on the EC2 instance is completed
Lock down unnecessary ports
Audit any proprietary applications that the user may be running on the EC2 instance
Provide temporary escalated privileges, such as sudo for users who need to perform occasional privileged tasks
IAM is useful when users are required to work with AWS resources and actions, such as launching an instance. It is not useful in this case because it does not manage who can connect via RDP or SSH with an instance.

LEARN MORE: http://aws.amazon.com/articles/1233/

* AWS allows you create an elastic network interface (ENI), attach an ENI to an EC2 instance, detach an ENI from an EC2 instance and attach this ENI to another EC2 instance. The attributes of a network traffic follow the ENI which is attached to an EC2 instance or detached from an EC2 instance. When you move an ENI from one EC2 instance to another, network traffic is redirected to the new EC2 instance. You can create and attach additional ENIs to an EC2 instance.

Attaching multiple network interfaces (ENIs) to an EC2 instance is useful to:

  - Create a management network.
  - Use network and security appliances in your VPC.
  - Create dual-homed instances with workloads/roles on distinct subnets
  - Create a low-budget, high-availability solution.
  
LEARN MORE: http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/using-eni.html

* Amazon VPC provides advanced security features such as security groups and network access control lists to enable inbound and outbound filtering at the instance level and subnet level.
AWS assigns each security group a unique ID in the form sg-xxxxxxxx. The following are the initial settings for a security group that you create:
  - Allows all inbound traffic from other instances associated with the default security group (the security group specifies itself as a source security group in its inbound rules)
  - Allows all outbound traffic from the instance.
LEARN MORE: http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/using-network-security.html#default-security-group

* Billing commences when Amazon EC2 initiates the boot sequence of an AMI instance. Billing ends when the instance terminates, which could occur through a web services command, by running “shutdown -h”, or through instance failure.

Assuming a Linux operating system is in use, pricing is per instance-second consumed for all instance types except Dedicated instances, which still bills on an hourly basis, where partial instance-hours consumed are billed as full hours. Windows instances of all types are still billed at on a per-hour basis.

LEARN MORE: http://aws.amazon.com/ec2/faqs/#Billing

* In the event of a disaster to your AWS infrastructure you should be able to quickly launch resources in Amazon Web Services (AWS) to ensure business continuity.

The following are some key steps you should have in place for preparation:

1. Set up Amazon EC2 instances to replicate or mirror data.
1. Ensure that you have all supporting custom software packages available in AWS.
1. Create and maintain AMIs of key servers where fast recovery is required. 
1. Regularly run these servers, test them, and apply any software updates and configuration changes.
1. Consider automating the provisioning of AWS resources.
LEARN MORE: http://d36cz9buwru1tt.cloudfront.net/AWS_Disaster_Recovery.pdf

* You can use the CLI tools to manage your Amazon EC2 resources (such as instances, security groups, and volumes) and your Amazon VPC resources (such as VPCs, subnets, route tables, and Internet gateways). Before you can start using the tools, you must download and configure them.

* The following are valid CLI commands for EC2 instances:
  - ec2-accept-vpc-peering-connection
  - ec2-allocate-address
  - ec2-assign-private-ip-addresses
  - ec2-associate-address
  - ec2-associate-dhcp-options
  - ec2-associate-route-table
  - ec2-attach-internet-gateway
  - ec2-attach-network-interface (not ec2-allocate-interface)

LEARN MORE: http://docs.aws.amazon.com/AWSEC2/latest/CommandLineReference/command-reference.html

* Amazon Elastic Compute Cloud (EC2) is a key component in Amazon’s Infrastructure as a Service (IaaS), providing resizable computing capacity using server instances in AWS’s data centers. Amazon EC2 is designed to make web-scale computing easier by enabling you to obtain and configure capacity with minimal friction.

You create and launch instances, which are collections of platform hardware and software.
Different instances running on the same physical machine are isolated from each other via the Xen hypervisor.

Amazon is active in the Xen community, which provides awareness of the latest developments. In addition, the AWS firewall resides within the hypervisor layer, between the physical network interface and the instance's virtual interface. All packets must pass through this layer, thus an instance’s neighbors have no more access to that instance than any other host on the Internet and can be treated as if they are on separate physical hosts. The physical RAM is separated using similar mechanisms.

LEARN MORE: http://d0.awsstatic.com/whitepapers/Security/AWS%20Security%20Whitepaper.pdf

* Amazon EC2 provides a virtual computing environments, known as an instance. 

After you launch an instance, AWS recommends that you check its status to confirm that it goes from the pending status to the running status, the not terminated status.

The following are a few reasons why an Amazon EBS-backed instance might immediately terminate:

  - You've reached your volume limit. 
  - The AMI is missing a required part.
  - The snapshot is corrupt.
LEARN MORE: http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/Using_InstanceStraightToTerminated.html

* Amazon ECS contains the following components:

  1. A Cluster is a logical grouping of container instances that you can place tasks on.
  1. A Container instance is an Amazon EC2 instance that is running the Amazon ECS agent and has been registered into a cluster. 
  1. A Task definition is a description of an application that contains one or more container definitions. 
  1. A Scheduler is a method used for placing tasks on container instances.
  1. A Service is an Amazon ECS service that allows you to run and maintain a specified number of instances of a task definition simultaneously. 
  1. A Task is an instantiation of a task definition that is running on a container instance.
  1. A Container is a Linux container that was created as part of a task.

LEARN MORE: http://docs.aws.amazon.com/AmazonECS/latest/developerguide/ECS_clusters.html

* You can select an Amazon Machine Image(AMI) based on the following list of characteristics:
  - Region 
  - Operating system
  - Architecture (32-bit or 64-bit)
  - Launch Permissions
  - Storage for the Root Device
LEARN MORE: http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ComponentsAMIs.html

* By default, all AWS accounts are limited to 5 Elastic IP addresses per region, because public (IPv4) Internet addresses are a scarce public resource. Amazon strongly encourages you to use an Elastic IP address primarily for the ability to remap the address to another instance in the case of instance failure, and to use DNS hostnames for all other inter-node communication.

LEARN MORE: http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/elastic-ip-addresses-eip.html

* Applications must sign their API requests with AWS credentials. Therefore, if you are an application developer, you need a strategy for managing credentials for your applications that run on EC2 instances. It can be challenging, however, to securely distribute credentials to each instance, especially those that AWS creates on your behalf. Amazon IAM roles were designed to allow your applications to securely make API requests from your instances, without requiring you to manage the security credentials that the applications use.

LEARN MORE: http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/iam-roles-for-amazon-ec2.html

* Tags help you to categorize your load balancers in different ways, for example, by purpose, owner, or environment. The following basic restrictions apply to tags: The maximum number of tags per resource is 50. The maximum key length is 127 Unicode characters. The maximum value length that can be used is 255 Unicode characters. The tag keys and values are case sensitive. Allowed characters are letters, spaces, and numbers representable in UTF-8, plus the following special characters: + - =. _ : / @. Do not use leading or trailing spaces. Do not use the aws: prefix in your tag names or values because it is reserved for AWS use. You can't edit or delete tag names or values with this prefix. Tags with this prefix do not count against your tags per resource limit.

LEARN MORE: http://docs.aws.amazon.com/ElasticLoadBalancing/latest/DeveloperGuide/add-remove-tags.html#tag-restrictions

* P2 instances are intended for general-purpose GPU compute applications. G2 instances are optimized for graphics-intensive applications. Both have dedicated high-performance NVIDIA GPUs specialized for applications such as machine learning, 3D application streaming, video encoding, high performance databases, computational fluid dynamics, rendering, and other server-side GPU compute workloads.

LEARN MORE: https://aws.amazon.com/ec2/instance-types/

* Up to 255 letters (uppercase and lowercase), numbers, hyphens, and underscores are allowed in a cluster name.

LEARN MORE: http://docs.aws.amazon.com/AmazonECS/latest/developerguide/create_cluster.html

## Networking

* The resource record sets contained in a hosted zone must share the same suffix. For example, the example.com hosted zone can contain resource record sets for www.example.com and www.aws.example.com subdomains, but it cannot contain resource record sets for a www.example.ca subdomain.

LEARN MORE: http://docs.aws.amazon.com/Route53/latest/DeveloperGuide/AboutHostedZones.html

* Elastic Beanstalk provides platforms for programming languages (Java, PHP, Python, Ruby, Go), web containers (Tomcat, Passenger, Puma) and Docker containers, with multiple configurations of each.

LEARN MORE: http://docs.aws.amazon.com/elasticbeanstalk/latest/dg/concepts.platforms.html

* Each Amazon EBS Snapshot has a createVolumePermission attribute that you can set to one or more AWS Account IDs to share the AMI with those AWS Accounts. To allow several AWS Accounts to use a particular EBS snapshot, you can use the snapshots's createVolumePermission attribute to include a list of the accounts that can use it.

LEARN MORE: http://docs.amazonwebservices.com/AWSEC2/latest/UserGuide/UsingIAM.html

* Amazon ENI, or an elastic network interface, is a virtual network interface that can be easily created, attached, and detached from any of your EC2 Instances within your VPC. Each ENI has a set of attributes that are preserved after it has been detached from an instance and attached to a new one.

LEARN MORE: http://docs.amazonwebservices.com/AWSEC2/latest/UserGuide/using-eni.html

* You can set the termination behavior for an elastic network interface attached to an instance so that it is automatically deleted when you delete the instance to which it's attached.

LEARN MORE: http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/using-eni.html#change_term_behavior

* A DB subnet group is a collection of subnets (typically private) that you create in a VPC and that you then designate for your DB instances. A DB subnet group allows you to specify a particular VPC when creating DB instances using the CLI or API. Amazon RDS uses that DB subnet group and your preferred Availability Zone to select a subnet and an IP address within that subnet to associate with your DB instance.

LEARN MORE: http://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/USER_VPC.WorkingWithRDSInstanceinaVPC.html#USER_VPC.Subn

* The instances that reside in the private subnets of your VPC are not reachable from the Internet, meaning that is not possible to SSH into them. To interact with them you can use a bastion server, located in a public subnet, that will act as a proxy for them.
You can also connect if you have Direct Connect or VPN.

LEARN MORE: http://docs.aws.amazon.com/AmazonVPC/latest/UserGuide/VPC_Scenario2.html

* Your company has decided to use an optional Amazon VPC VPN connection that links your data center (or network) to your Amazon VPC virtual private cloud (VPC). A customer gateway is the anchor on your side of that connection.

LEARN MORE: http://docs.aws.amazon.com/AmazonVPC/latest/NetworkAdminGuide/Introduction.html

* In VPC, you are allowed to change the security groups an instance belongs to, even after it has been launched.

In contrast, once an instance is launched in EC2 Classic, you are not allowed to change the security groups it belongs to.

LEARN MORE: http://docs.aws.amazon.com/AmazonVPC/latest/UserGuide/VPC_SecurityGroups.html

* You can create a custom network ACL for your VPC. By default, a network ACL that you create blocks all inbound and outbound traffic until you add rules, and is not associated with a subnet until you explicitly associate it with one.

The default NACL that is created with your VPC allows all inbound and outbound traffic by default

LEARN MORE: http://docs.aws.amazon.com/AmazonVPC/latest/UserGuide/VPC_ACLs.html#CreateACL

* The X-Forwarded-Port request header helps the user identify the port used by the client while sending a request to ELB.
LEARN MORE: http://docs.aws.amazon.com/ElasticLoadBalancing/latest/DeveloperGuide/TerminologyandKeyConcepts.html

* You can configure your load balancer in ELB (Elastic Load Balancing) to use a SSL certificate in order to improve your system security.The load balancer uses the certificate to terminate and then decrypt requests before sending them to the back-end instances. Elastic Load Balancing uses AWS Identity and Access Management (IAM) to upload your certificate to your load balancer.
LEARN MORE: http://docs.aws.amazon.com/ElasticLoadBalancing/latest/DeveloperGuide/US_SettingUpLoadBalancerHTTPS.html

* The advantage of associating the Elastic IP address with the network interface instead of directly with the instance is that you can move all the attributes of the network interface from one instance to another in a single step.

LEARN MORE: http://docs.aws.amazon.com/AmazonVPC/latest/UserGuide/vpc-eips.html

* A route table contains a set of rules, called routes, that are used to determine where network traffic is directed. Each subnet in your VPC must be associated with a route table; the table controls the routing for the subnet. A subnet can only be associated with one route table at a time, but you can associate multiple subnets with the same route table. Your VPC can have route tables other than the default table.

LEARN MORE: http://docs.aws.amazon.com/AmazonVPC/latest/UserGuide/VPC_Route_Tables.html

* Every subnet in your VPC must be associated with exactly one Route Table. However, multiple subnets can be associated with the same Route Table.
LEARN MORE: http://docs.aws.amazon.com/AmazonVPC/latest/UserGuide/VPC_Route_Tables.html

* When a user is configuring ELB and registering the EC2 instances with it, ELB will create a source security group. If the user wants to allow traffic only from ELB, he should remove all the rules set for the other requests and open the port only for the ELB source security group.

LEARN MORE: http://docs.aws.amazon.com/elasticloadbalancing/latest/classic/elb-security-groups.html

* If a user is configuring HTTPS on the front end and TCP on the back end, ELB will not allow saving these listeners and will respond with the message.

“Load Balancer protocol is an application layer protocol, but instance protocol is not. Both the Load Balancer protocol and the instance protocol should be at the same layer. Please fix.”

LEARN MORE: http://docs.aws.amazon.com/ElasticLoadBalancing/latest/DeveloperGuide/elb-troubleshooting.html

* Yes, it is possible to have one instance part of two separate ELBs, though both ELBs have different configurations. ELBs are never launched in specific zones.

LEARN MORE: http://docs.aws.amazon.com/ElasticLoadBalancing/latest/DeveloperGuide/enable-disable-az.html

* If you use a custom origin, you will need to create an Amazon S3 bucket to store your log files in. You can enable CloudFront to deliver access logs per distribution to an Amazon S3 bucket of your choice.

LEARN MORE: http://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/AccessLogs.html

* In Amazon Route 53, you cannot create a hosted zone for a top-level domain (TLD).

LEARN MORE: http://docs.aws.amazon.com/Route53/latest/APIReference/API_CreateHostedZone.html

* Using VPC, you can deploy a new class of web applications on Elastic Beanstalk, including internal web applications (such as your recruiting application), web applications that connect to an on-premise database (using a VPN connection), as well as private web service backends. Elastic Beanstalk launches your AWS resources, such as instances, into your VPC. Your VPC closely resembles a traditional network, with the benefits of using AWS's scalable infrastructure.

LEARN MORE: http://docs.aws.amazon.com/elasticbeanstalk/latest/dg/vpc.html

* AWS Direct Connect implements the following policy keys of Identity and Access Management:

  - aws:CurrentTime (for date/time conditions)
  - aws:EpochTime (the date in epoch or UNIX time, for use with date/time conditions)
  - aws:SecureTransport (Boolean representing whether the request was sent using SSL)
  - aws:SourceIp (the requester's IP address, for use with IP address conditions)
  - aws:UserAgent (information about the requester's client application, for use with string conditions)

LEARN MORE: http://docs.aws.amazon.com/directconnect/latest/UserGuide/using_iam.html

* An ELB instance performs a health check on its instances to ensure that it diverts traffic only to healthy instances. A Classic Load Balancer can perform a health check on HTTP, HTTPS, TCP and SSL protocols, while an Application Load Balancer can perform health checks on HTTP and HTTPS.

LEARN MORE: http://docs.aws.amazon.com/ElasticLoadBalancing/latest/DeveloperGuide/Welcome.html

* The key to manage the sticky session is determining how long the load balancer should route the user's request to the same application instance. If the application has its own session cookie, then the user can set the Elastic Load Balancing to create the session cookie to follow the duration specified by the application's session cookie. If the user’s application does not have its own session cookie, then he can set the Elastic Load Balancing to create a session cookie by specifying his own stickiness duration.

LEARN MORE: http://docs.aws.amazon.com/ElasticLoadBalancing/latest/DeveloperGuide/US_StickySessions.html

* The Elastic Load Balancer connection draining feature causes the load balancer to stop sending new requests to the back-end instances when the instances are deregistering or become unhealthy, while ensuring that in-flight requests continue to be served.

LEARN MORE: http://docs.aws.amazon.com/ElasticLoadBalancing/latest/DeveloperGuide/config-conn-drain.html

* A Virtual Private Cloud (VPC) is a virtual network dedicated to the user’s AWS account.  It enables the user to launch AWS resources into a virtual network that the user has defined. With VPC the user can specify multiple private IP addresses for his instances.

The number of network interfaces and private IP addresses that a user can specify for an instance depends on the instance type. This scenario helps when the user wants to host multiple websites on a single EC2 instance. After the user has assigned a secondary private IP address to his instance, he needs to configure the operating system on that instance to recognize the secondary private IP address.

For AWS Linux, the ec2-net-utils package can take care of this step. It configures additional network interfaces that the user can attach while the instance is running, refreshes secondary IP addresses during DHCP lease renewal, and updates the related routing rules. 

LEARN MORE: http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/MultipleIP.html

* A Virtual Private Cloud (VPC) is a virtual network dedicated to the user’s AWS account. The user can create subnets as per the requirement within a VPC. The VPC is always specific to a region. The user can create a VPC which can span multiple Availability Zones by adding one or more subnets in each Availability Zone.

The instance launched will always be in the same availability zone of the respective subnet. When creating an EBS the user cannot specify the subnet or VPC. However, the user must create the EBS in the same zone as the instance so that it can attach the EBS volume to the running instance. (See http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/Stop_Start.html for more on attaching/detaching with running instance.)

LEARN MORE: http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ebs-attaching-volume.html

* If you need to host multiple websites (with different IPs) on a single EC2 instance, the following is the suggested method from AWS.

  1. Launch an EC2 instance  with two network interfaces within a VPC.
  1. Assign elastic IPs from VPC EIP pool to those interfaces (Because, when the user has attached more than one network interface with an instance, AWS cannot assign public IPs to them.)
  1. Assign separate Security Groups if separate Security Groups are needed

This scenario also helps for operating network appliances, such as firewalls or load balancers that have multiple private IP addresses for each network interface.

LEARN MORE: http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/MultipleIP.html

* Auto Scaling performs various processes, such as Launch, Terminate, and Availability Zone Rebalance (AZRebalance). The AZRebalance process type seeks to maintain a balanced number of instances across Availability Zones within a region. If the user suspends the Terminate process, the AZRebalance process can cause the Auto Scaling group to grow up to ten percent larger than the maximum size. This is because Auto Scaling allows groups to temporarily grow larger than the maximum size during rebalancing activities. If Auto Scaling cannot terminate instances, the Auto Scaling group could remain up to ten percent larger than the maximum size until the user resumes the Terminate process type.  

LEARN MORE: http://docs.aws.amazon.com/AutoScaling/latest/DeveloperGuide/US_SuspendResume.html

* The Elastic Load Balancer connection draining feature causes the load balancer to stop sending new requests to the back-end instances when the instances are deregistering or become unhealthy, while ensuring that in-flight requests continue to be served. The user can specify a maximum time of 3600 seconds (1 hour) for the load balancer to keep the connections alive before reporting the instance as deregistered. If the user does not specify the maximum timeout period, by default, the load balancer will close the connections to the deregistering instance after 300 seconds.

LEARN MORE: http://docs.aws.amazon.com/ElasticLoadBalancing/latest/DeveloperGuide/config-conn-drain.html

* Amazon CloudFront is a web service for content delivery. CloudFront delivers your content using a global network of edge locations and works seamlessly with Amazon S3 which durably stores the original and definitive versions of your files.

Amazon CloudFront billing is mainly affected by

  - Data Transfer Out
  - Edge Location Traffic Distribution
  - Invalidation Requests
  - HTTP/HTTPS Requests
  - Dedicated IP SSL Certificates
LEARN MORE: http://calculator.s3.amazonaws.com/index.html

* Best Practices for Configuring Network Interfaces

  - You can attach a network interface to an instance when it's running (hot attach), when it's stopped (warm attach), or when the instance is being launched (cold attach).
  - You can detach secondary (ethN) network interfaces when the instance is running or stopped. However, you can't detach the primary (eth0) interface.
  - You can attach a network interface in one subnet to an instance in another subnet in the same VPC, however, both the network interface and the instance must reside in the same Availability Zone.
  - When launching an instance from the CLI or API, you can specify the network interfaces to attach to the instance for both the primary (eth0) and additional network interfaces.
  - Launching an instance with multiple network interfaces automatically configures interfaces, private IP addresses, and route tables on the operating system of the instance.
  - A warm or hot attach of an additional network interface may require you to manually bring up the second interface, configure the private IP address, and modify the route table accordingly. (Instances running Amazon Linux automatically recognize the warm or hot attach and configure themselves.)
  - Attaching another network interface to an instance is not a method to increase or double the network bandwidth to or from the dual-homed instance.
LEARN MORE: http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/using-eni.html#use-network-and-security-appliances-in-your-vpc

* Elastic Load Balancing supports the following versions of the SSL protocol:

  - TLS 1.2
  - TLS 1.1
  - TLS 1.0
  - SSL 3.0
  - SSL 2.0
LEARN MORE: http://docs.aws.amazon.com/ElasticLoadBalancing/latest/DeveloperGuide/elb-ssl-security-policy.html

* With DNS Failover, Amazon Route 53 can help detect an outage of your website and redirect your end users to alternate locations where your application is operating properly.

LEARN MORE: http://aws.amazon.com/about-aws/whats-new/2013/02/11/announcing-dns-failover-for-route-53/

* You can set up a variety of failover configurations using Amazon Route 53 alias: weighted, latency, geolocation routing, and failover resource record sets.

  - Active-active failover: Use this failover configuration when you want all of your resources to be available the majority of the time. When a resource becomes unavailable, Amazon Route 53 can detect that it's unhealthy and stop including it when responding to queries.
  - Active-passive failover: Use this failover configuration when you want a primary group of resources to be available the majority of the time and you want a secondary group of resources to be on standby in case all of the primary resources become unavailable. When responding to queries, Amazon Route 53 includes only the healthy primary resources. If all of the primary resources are unhealthy, Amazon Route 53 begins to include only the healthy secondary resources in response to DNS queries.
  - Active-active-passive and other mixed configurations: You can combine alias and non-alias resource record sets to produce a variety of Amazon Route 53 behaviors.
LEARN MORE: http://docs.aws.amazon.com/Route53/latest/DeveloperGuide/dns-failover.html

* Before you start using Elastic Load Balancing(ELB), you have to configure the listeners for your load balancer. A listener is a process that listens for connection requests. It is configured with a protocol and a port number for front-end (client to load balancer) and back-end (load balancer to back-end instance) connections.

** Elastic Load Balancing supports the load balancing of applications using HTTP, HTTPS (secure HTTP), TCP, and SSL (secure TCP) protocols.** The HTTPS uses the SSL protocol to establish secure connections over the HTTP layer. You can also use SSL protocol to establish secure connections over the TCP layer.

The acceptable ports for both HTTPS/SSL and HTTP/TCP connections are 25, 80, 443, 465, 587, and 1024-65535.

LEARN MORE: http://docs.aws.amazon.com/ElasticLoadBalancing/latest/DeveloperGuide/elb-listener-config.html

* When setting up security groups for incoming traffic in your VPC network, to add one or more ingress(incoming traffic) rules to a security group

  - authorize-security-group-ingress (AWS CLI)
  - ec2-authorize (Amazon EC2 CLI)
  - Grant-EC2SecurityGroupIngress (AWS Tools for Windows PowerShell)

In computer networking, ingress filtering is a technique used to make sure that incoming packets are actually from the networks that they claim to be from.

In computer networking, egress filtering is the practice of monitoring and potentially restricting the flow of information outbound from one network to another. Typically it is information from a private TCP/IP computer network to the Internet that is controlled.

LEARN MORE: http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/using-network-security.html

* If you have multiple VPN connections, you can provide secure communication between sites using the AWS VPN CloudHub. The VPN CloudHub operates on a simple hub-and-spoke model that you can use with or without a VPC. This design is suitable for customers with multiple branch offices and existing Internet connections who would like to implement a convenient, potentially low-cost hub-and-spoke model for primary or backup connectivity between these remote offices.

LEARN MORE: http://docs.aws.amazon.com/AmazonVPC/latest/UserGuide/VPN_CloudHub.html

* To create a VPC peering connection with another VPC, you need to be aware of the following limitations and rules:

  - You cannot create a VPC peering connection between VPCs that have matching or overlapping CIDR blocks.
  - You cannot create a VPC peering connection between VPCs in different regions.
  - You have a limit on the number active and pending VPC peering connections that you can have per VPC.   
    VPC peering does not support transitive peering relationships; in a VPC peering connection, your VPC will not have access to any other VPCs that the peer VPC may be peered with. This includes VPC peering connections that are established entirely within your own AWS account. 
  - You cannot have more than one VPC peering connection between the same two VPCs at the same time.
  - The Maximum Transmission Unit (MTU) across a VPC peering connection is 1500 bytes.
  - A placement group can span peered VPCs; however, you will not get full-bisection bandwidth between instances in peered VPCs. 
  - Unicast reverse path forwarding in VPC peering connections is not supported. 
  - Private DNS values cannot be resolved between instances in peered VPCs.  
  
LEARN MORE: http://docs.aws.amazon.com/AmazonVPC/latest/PeeringGuide/vpc-peering-overview.html#vpc-peering-limitations

* You restrict access to Amazon S3 content by creating an origin access identity, which is a special CloudFront user. You change Amazon S3 permissions to give the origin access identity permission to access your objects, and to remove permissions from everyone else. When your users access your Amazon S3 objects using CloudFront URLs, the CloudFront origin access identity gets the objects on your users' behalf. If your users try to access objects using Amazon S3 URLs, they're denied access. The origin access identity has permission to access objects in your Amazon S3 bucket, but users don't.

LEARN MORE: http://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/private-content-restricting-access-to-s3.html

* To use the AWS VPN CloudHub, you must create a virtual private gateway with multiple customer gateways. You can use the same Border Gateway Protocol (BGP) Autonomous System Number (ASN) for each, or if you prefer, you can use a unique ASN for each. Customer gateways advertise the appropriate routes (BGP prefixes) over their VPN connections. These routing advertisements are received and re-advertised to each BGP peer, enabling each site to send data to and receive data from the other sites. The sites must not have overlapping IP ranges. Each site can also send and receive data from the VPC as if they were using a standard VPN connection.

LEARN MORE: http://docs.aws.amazon.com/AmazonVPC/latest/UserGuide/VPN_CloudHub.html

* AWS Direct Connect is a network service that provides an alternative to using the internet to utilize AWS cloud services.

Using AWS Direct Connect, data that would have previously been transported over the Internet can now be delivered through a private network connection between AWS and your datacenter or corporate network.

1Gbps and 10Gbps are available. Speeds of 50Mbps, 100Mbps, 200Mbps, 300Mbps, 400Mbps, and 500Mbps can be ordered from any APN partners supporting AWS Direct Connect.

LEARN MORE: https://aws.amazon.com/directconnect/faqs/

* Amazon VPC enables you to build a virtual network in the AWS cloud - no VPNs, hardware, or physical datacenters required.

Your AWS resources are automatically provisioned in a ready-to-use default VPC. You can choose to create additional VPCs by going to Amazon VPC page on the AWS Management Console and click on the "Start VPC Wizard" button.

You’ll be presented with four basic options for network architectures. After selecting an option, you can modify the size and IP address range of the VPC and its subnets. If you select an option with Hardware VPN Access, you will need to specify the IP address of the VPN hardware on your network. You can modify the VPC to add more subnets or add or remove gateways at any time after the VPC has been created.

The four options are:

  1. VPC with a Single Public Subnet Only
  1. VPC with Public and Private Subnets
  1. VPC with Public and Private Subnets and Hardware VPN Access
  1. VPC with a Private Subnet Only and Hardware VPN Access
LEARN MORE: https://aws.amazon.com/vpc/faqs/

* With DNS Failover, Amazon Route 53 can help detect an outage of your website and redirect your end users to alternate locations where your application is operating properly. When you enable this feature, Route 53 uses health checks—regularly making Internet requests to your application’s endpoints from multiple locations around the world—to determine whether each endpoint of your application is up or down.

To enable DNS Failover for an ELB endpoint, create an Alias record pointing to the ELB and set the “Evaluate Target Health” parameter to true. Route 53 creates and manages the health checks for your ELB automatically. You do not need to create your own Route 53 health check of the ELB. You also do not need to associate your resource record set for the ELB with your own health check, because Route 53 automatically associates it with the health checks that Route 53 manages on your behalf. The ELB health check will also inherit the health of your backend instances behind that ELB. 

LEARN MORE: https://aws.amazon.com/blogs/aws/amazon-route-53-elb-integration-dns-failover/

* Amazon Elastic Load Balancing is used to manage traffic on a fleet of Amazon EC2 instances, distributing traffic to instances across all availability zones within a region. Elastic Load Balancing has all the advantages of an on-premises load balancer, plus several security benefits:

  - Takes over the encryption and decryption work from the Amazon EC2 instances and manages it centrally on the load balancer
  - Offers clients a single point of contact, and can also serve as the first line of defense against attacks on your network
  - When used in an Amazon VPC, supports creation and management of security groups associated with your Elastic Load Balancing to provide additional networking and security options
  - Supports end-to-end traffic encryption using TLS (previously SSL) on those networks that use secure HTTP (HTTPS) connections. When TLS is used, the TLS server certificate used to terminate client connections can be managed centrally on the load balancer, rather than on every individual instance.  
  
LEARN MORE: http://d0.awsstatic.com/whitepapers/Security/AWS%20Security%20Whitepaper.pdf

* In relation to Amazon Simple Workflow Service (Amazon SWF), an activity worker is a program that receives activity tasks, performs them, and provides results back. Which translates to a piece of software that implements tasks.

LEARN MORE: http://docs.aws.amazon.com/amazonswf/latest/developerguide/swf-dg-develop-activity.html

* Regarding Public DNS Names for Your Load Balancer, the public DNS name with the dualstack prefix returns both IPv4 and IPv6 records. AWS recommends that you enable IPv6 support by using the DNS name with the dualstack prefix to ensure that clients can access the load balancer using either IPv4 or IPv6.

LEARN MORE: http://docs.aws.amazon.com/ElasticLoadBalancing/latest/DeveloperGuide/elb-internet-facing-load-balancers.html

* Permissions can be assigned in two ways: as identity-based or as resource-based.
  - Identity-based, or IAM permissions are attached to an IAM user, group, or role and let you specify what that user, group, or role can do. For example, you can assign permissions to the IAM user named Bob, stating that he has permission to use the Amazon Elastic Compute Cloud (Amazon EC2) `RunInstances` action and that he has permission to get items from an Amazon DynamoDB table named `MyCompany`. The user Bob might also be granted access to manage his own IAM security credentials. Identity-based permissions can be managed or inline.
  - Resource-based permissions are attached to a resource. You can specify resource-based permissions for Amazon S3 buckets, Amazon Glacier vaults, Amazon SNS topics, Amazon SQS queues, and AWS Key Management Service encryption keys. Resource-based permissions let you specify who has access to the resource and what actions they can perform on it. Resource-based policies are inline only, not managed.
LEARN MORE: http://docs.aws.amazon.com/IAM/latest/UserGuide/access_permissions.html

* The Elastic Load Balancer can integrate with the AWS Certificate Manager to provide a central method of managing your TLS/SSL certificates. It allows you to renew, deploy and configure your TLS/SSL certificates for your application or website from a single location. 

LEARN MORE: https://aws.amazon.com/elasticloadbalancing

* You can seamlessly join an EC2 instance to your directory domain when the instance is launched using the Amazon EC2 Simple Systems Manager. If you need to manually join an EC2 instance to your domain, you must launch the instance in the proper region and security group or subnet, then join the instance to the domain. To be able to connect remotely to these instances, you must have IP connectivity to the instances from the network you are connecting from. In most cases, this requires that an Internet gateway be attached to your VPC and that the instance has a public IP address.

LEARN MORE: http://docs.aws.amazon.com/directoryservice/latest/admin-guide/join_a_directory.html

## Storagge

* AWS EBS supports encryption of the volume while creating new volumes. It also supports creating volumes from existing snapshots provided the snapshots are created from encrypted volumes. The data at rest, the I/O as well as all the snapshots of EBS will be encrypted.  The encryption occurs on the servers that host the EC2 instances, providing encryption of data as it moves between the EC2 instances and EBS storage. EBS encryption is based on the AES-256 cryptographic algorithm, which is the industry standard.

LEARN MORE: http://aws.amazon.com/about-aws/whats-new/2014/05/21/Amazon-EBS-encryption-now-available/

* AWS Storage Gateway connects an on-premises software appliance with cloud-based storage to provide seamless integration with data security features between your on-premises IT environment and the Amazon Web Services (AWS) storage infrastructure.

LEARN MORE: http://docs.aws.amazon.com/storagegateway/latest/userguide/WhatIsStorageGateway.html

* When modifying EBS snapshot permissions with AWS Console, one of the options is to make the snapshot public or not. However, snapshots with AWS Marketplace product codes can't be made public.

LEARN MORE: http://docs.amazonwebservices.com/AWSEC2/latest/UserGuide/ebs-modifying-snapshot-permissions.html

* You store your data in Amazon S3 and retain a copy of frequently accessed data subsets locally. Gateway-cached volumes offer a substantial cost savings on primary storage and minimize the need to scale your storage on-premises. You also retain low-latency access to your frequently accessed data.

LEARN MORE: http://docs.aws.amazon.com/storagegateway/latest/userguide/WhatIsStorageGateway.html

* When using Amazon Import/Export, a separate job request needs to be submitted for each physical device even if they belong to the same import or export job.

LEARN MORE: http://docs.aws.amazon.com/AWSImportExport/latest/DG/Concepts.html

* You can list AWS Import/Export jobs with the ListJobs command using the command line client or REST API.

LEARN MORE: http://docs.aws.amazon.com/AWSImportExport/latest/DG/ListingYourJobs.html

* S3 objects stored in the bucket before the user has set the versioning state have a version ID of null. When the user enables versioning, the objects in the bucket do not change and their ID remains null.

LEARN MORE: http://docs.aws.amazon.com/AmazonS3/latest/dev/AddingObjectstoVersionSuspendedBuckets.html

* To host a static website, the user needs to configure an Amazon S3 bucket for website hosting and then upload the website contents to the bucket. The website is then available at the region-specific website endpoint of the bucket.

LEARN MORE: http://docs.aws.amazon.com/AmazonS3/latest/dev/WebsiteHosting.html

* To host a static website, the user needs to configure an Amazon S3 bucket for website hosting and then upload the website contents to the bucket. The user can configure the index, error document as well as configure the conditional routing of on object name.  

LEARN MORE: http://docs.aws.amazon.com/AmazonS3/latest/dev/HowDoIWebsiteConfiguration.html

* If the user is using the server-side encryption feature, Amazon S3 encrypts the object data before saving it on disks in its data centres and decrypts it when the user downloads the objects. Thus, the user is free from the tasks of managing encryption, encryption keys, and related tools.

LEARN MORE: http://docs.aws.amazon.com/AmazonS3/latest/dev/UsingEncryption.html

* Amazon S3 offers access policy options broadly categorized as resource-based policies and user policies. Access policies, such as ACL and resource policy can be attached to the bucket.  With the object the user can only have ACL and not an object policy. The user can also attach access policies to the IAM users in the account. These are called user policies.

LEARN MORE: http://docs.aws.amazon.com/AmazonS3/latest/dev/s3-access-control.html

* An S3 object ACL is the only way to manage access to objects which are not owned by the bucket owner. An AWS account that owns the bucket can grant another AWS account permission to upload objects. The bucket owner does not own these objects. The AWS account that created the object must grant permissions using object ACLs.

LEARN MORE: http://docs.aws.amazon.com/AmazonS3/latest/dev/access-policy-alternatives-guidelines.html

* By default, logging is disabled. To enable access logging, you must do the following:
  - Turn on the log delivery by adding logging configuration on the bucket for which you want Amazon S3 to deliver access logs. We will refer to this bucket as the source bucket.
  - Grant the Amazon S3 Log Delivery group write permission on the bucket where you want the access logs saved. We will refer to this bucket as the target bucket.  

To turn on log delivery, you provide the following logging configuration information:
  - Name of the target bucket name where you want Amazon S3 to save the access logs as objects. You can have logs delivered to any bucket that you own, including the source bucket. We recommend that you save access logs in a different bucket so you can easily manage the logs. If you choose to save access logs in the same bucket as the source bucket, we recommend you specify a prefix to all log object keys so that you can easily identify the log objects.  
  
LEARN MORE: http://docs.aws.amazon.com/AmazonS3/latest/dev/access-policy-alternatives-guidelines.html

* If a IAM user is trying to perform some action on an object belonging to another AWS user’s bucket, S3 will verify whether the owner of the IAM user has given sufficient permission to him. It also verifies the policy for the bucket as well as the policy defined by the object owner.

LEARN MORE: http://docs.aws.amazon.com/AmazonS3/latest/dev/access-control-auth-workflow-object-operation.html

* An EBS volume provides persistent data storage. The user can attach a volume to any instance provided they are both in the same AZ. Even if they are in the same region but in a different AZ, it will not be able to attach the volume to that instance.

LEARN MORE: http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/AmazonEBS.html

* When a user is trying to detach an EBS volume, the user can either terminate the instance or explicitly remove the volume. It is a recommended practice to unmount the volume first to avoid any file system damage.

LEARN MORE: http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ebs-detaching-volume.html

* If a user has launched an EBS backed instance, the user will be charged for the EBS volume even though the instance is in a stopped state. The instance will be charged for the EC2 hourly cost only when it is running.

LEARN MORE: http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ebs-detaching-volume.html

* If an EBS volume stays in the detaching state, the user can force the detachment by clicking Force Detach. Forcing the detachment can lead to either data loss or a corrupted file system. The user should use this option only as a last resort to detach a volume from a failed instance or if he is detaching a volume with the intention of deleting it.

LEARN MORE: http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ebs-detaching-volume.html

* When a user is trying to mount a blank EBS volume, it is required that the user first creates a file system within the volume.  

LEARN MORE: http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ebs-using-volumes.html

* In AWS Storage Gateway, using Gateway–virtual tape library (VTL), you can cost-effectively and durably store archive and long-term backup data in Amazon Glacier. Gateway-VTL provides virtual tape infrastructure that scales seamlessly with your business needs and eliminates the operational burden of provisioning, scaling and maintaining a physical tape infrastructure.

LEARN MORE: http://docs.aws.amazon.com/storagegateway/latest/userguide/WhatIsStorageGateway.html

* S3-RRS is still enables customers to store noncritical, reproducible data at lower levels of redundancy than Amazon S3’s standard storage, **but it no longer offers a lower price than S3-Standard.** It provides a highly available solution for distributing or sharing content that is durably stored elsewhere, or for storing thumbnails, transcoded media, or other processed data that can be easily reproduced.

LEARN MORE: https://aws.amazon.com/s3/reduced-redundancy/

* To configure the Auto Scaling termination policy, the user can either specify any one of the policies as a standalone policy or list multiple policies in an ordered list. The policies are executed in the order that they are listed.

LEARN MORE: http://docs.aws.amazon.com/AutoScaling/latest/DeveloperGuide/us-termination-policy.html

* AWS EBS supports encryption of the volume. It also supports creating volumes from existing snapshots provided the snapshots are created from encrypted volumes. The data at rest, the I/O as well as all the snapshots of the encrypted EBS will also be encrypted. EBS encryption is based on the AES-256 cryptographic algorithm, which is the industry standard.

LEARN MORE: http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/EBSEncryption.html

* Amazon S3 supports client side or server side encryption to encrypt all data at Rest. The server side encryption can either have the S3 supplied AES-256 encryption key or the user can send the key along with each API call to supply his own encryption key (SSE-C). Since S3 does not store the encryption keys in SSE-C, it is recommended that the user should manage keys securely and keep rotating them regularly at the client side version.

LEARN MORE: http://docs.aws.amazon.com/AmazonS3/latest/dev/ServerSideEncryptionCustomerKeys.html

* With Amazon EBS, you can use any of the standard RAID configurations that you can use with a traditional bare metal server, as long as that particular RAID configuration is supported by the operating system for your instance. This is because all RAID is accomplished at the software level. For greater I/O performance than you can achieve with a single volume, RAID 0 can stripe multiple volumes together; for on-instance redundancy, RAID 1 can mirror two volumes together.  

RAID 5 and RAID 6 are not recommended for Amazon EBS because the parity write operations of these RAID modes consume some of the IOPS available to your volumes.

LEARN MORE: http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/raid-config.html

* BitTorrent is an open, peer-to-peer protocol for distributing files. You can use the BitTorrent protocol to retrieve any publicly-accessible object in Amazon S3. 

Amazon S3 supports the BitTorrent protocol so that developers can save costs when distributing content at high scale. Amazon S3 is useful for simple, reliable storage of any data. The default distribution mechanism for Amazon S3 data is via client/server download. In client/server distribution, the entire object is transferred point-to-point from Amazon S3 to every authorized user who requests that object. While client/server delivery is appropriate for a wide variety of use cases, it is not optimal for everybody. Specifically, the costs of client/server distribution increase linearly as the number of users downloading objects increases. This can make it expensive to distribute popular objects.

You can get torrent only for objects that are less than 5 GB in size. 

LEARN MORE: http://docs.aws.amazon.com/AmazonS3/latest/dev/S3Torrent.html

* Amazon S3 encrypts your object before saving it on disks in its data centers and decrypts it when you download the objects. You have two options depending on how you choose to manage the encryption keys: Server-side encryption and client-side encryption.

Server-side encryption is about data encryption at rest—that is, Amazon S3 encrypts your data as it writes it to disks in its data centers and decrypts it for you when you access it. As long as you authenticate your request and you have access permissions, there is no difference in the way you access encrypted or unencrypted objects. Amazon S3 manages encryption and decryption for you. For example, if you share your objects using a pre-signed URL, that URL works the same way for both encrypted and unencrypted objects.

In client-side encryption, you manage encryption/decryption of your data, the encryption keys, and related tools. Server-side encryption is an alternative to client-side encryption in which Amazon S3 manages the encryption of your data, freeing you from the tasks of managing encryption and encryption keys.

Amazon S3 server-side encryption employs strong multi-factor encryption. Amazon S3 encrypts each object with a unique key. As an additional safeguard, it encrypts the key itself with a master key that it regularly rotates. Amazon S3 server-side encryption uses one of the strongest block ciphers available, 256-bit Advanced Encryption Standard (AES-256), to encrypt your data.

LEARN MORE: http://docs.aws.amazon.com/AmazonS3/latest/dev/UsingServerSideEncryption.html

* AWS Import/Export supports:
  - Import to Amazon S3
  - Export from Amazon S3
  - Import to Amazon EBS
  - Import to Amazon Glacier
  - AWS Import/Export does not currently support export from Amazon EBS or Amazon Glacier.

LEARN MORE: https://docs.aws.amazon.com/AWSImportExport/latest/DG/whatisdisk.html

* Multipart upload in Amazon S3 allows you to upload a single object as a set of parts. Each part is a contiguous portion of the object's data. You can upload these object parts independently and in any order. If transmission of any part fails, you can re-transmit that part without affecting other parts. After all parts of your object are uploaded, Amazon S3 assembles these parts and creates the object. In general, when your object size reaches 100 MB, you should consider using multipart uploads instead of uploading the object in a single operation.  

Using multipart upload provides the following advantages:

  - Improved throughput—You can upload parts in parallel to improve throughput.
  - Quick recovery from any network issues—Smaller part size minimizes the impact of restarting a failed upload due to a network error.
  - Pause and resume object uploads—You can upload object parts over time. Once you initiate a multipart upload there is no expiry; you must explicitly complete or abort the multipart upload.
  - Begin an upload before you know the final object size—You can upload an object as you are creating it.  

  LEARN MORE: http://docs.aws.amazon.com/AmazonS3/latest/dev/uploadobjusingmpu.html

* When you create a snapshot of a Throughput Optimized HDD (st1) or Cold HDD (sc1) volume, performance may drop as far as the volume's baseline value while the snapshot is in progress. This behavior is specific to these volume types. 

LEARN MORE: http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/EBSPerformance.html

* When you plan and configure EBS volumes for your application, it is important to consider the configuration of the instances that you will attach the volumes to. In order to get the most performance out of your EBS volumes, you should attach them to an instance with enough bandwidth to support your volumes, such as an EBS-optimized instance or an instance with 10 Gigabit network connectivity. This is especially important when you use General Purpose (SSD) or Provisioned IOPS (SSD) volumes, or when you stripe multiple volumes together in a RAID configuration.

LEARN MORE: http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ebs-ec2-config.html

* In EBS workload demand plays an important role in getting the most out of your General Purpose (SSD) and Provisioned IOPS (SSD) volumes. In order for your volumes to deliver the amount of IOPS that are available, they need to have enough I/O requests sent to them. There is a relationship between the demand on the volumes, the amount of IOPS that are available to them, and the latency of the request (the amount of time it takes for the I/O operation to complete).

Latency is the true end-to-end client time of an I/O operation; in other words, when the client sends a IO, how long does it take to get an acknowledgement from the storage subsystem that the IO read or write is complete.

If your I/O latency is higher than you require, check your average queue length to make sure that your application is not trying to drive more IOPS than you have provisioned. You can maintain high IOPS while keeping latency down by maintaining a low average queue length (which is achieved by provisioning more IOPS for your volume).

LEARN MORE: http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/EBSVolumes.html

* With IAM, you can centrally manage users, security credentials such as access keys, and permissions that control which AWS resources users can access.

In some cases, you might have an IAM user with full access to IAM and Amazon S3. If the IAM user assigns a bucket policy to an Amazon S3 bucket and doesn't specify the root user as a principal, the root user is denied access to that bucket. However, as the root user, you can still access the bucket by modifying the bucket policy to allow root user access using the Amazon S3 console or the AWS CLI.

LEARN MORE: http://docs.aws.amazon.com/IAM/latest/UserGuide/troubleshoot_iam-s3.html

* Volume gateways provide cloud-backed storage volumes that you can mount as Internet Small Computer System Interface (iSCSI) devices from your on-premises application servers. The gateway supports the following volume configurations:

  - Cached Volumes – You store your data in Amazon Simple Storage Service (Amazon S3) and retain a copy of frequently accessed data subsets locally. Cached volumes offer a substantial cost savings on primary storage and minimize the need to scale your storage on-premises. You also retain low-latency access to your frequently accessed data.

  - Stored Volumes – If you need low-latency access to your entire data set, you can configure your on-premises gateway to store all your data locally and then asynchronously backup point-in-time snapshots of this data to Amazon S3. This configuration provides durable and inexpensive off-site backups that you can recover to your local data center or Amazon EC2. For example, if you need replacement capacity for disaster recovery, you can recover the backups to Amazon EC2.

LEARN MORE: http://docs.aws.amazon.com/storagegateway/latest/userguide/volume-gateway.html

* IOPS are a unit of measure representing input/output operations per second. The operations are measured in KiB, and the underlying drive technology determines the maximum amount of data that a volume type counts as a single I/O. I/O size is capped at 256 KiB for SSD volumes and 1,024 KiB for HDD volumes because SSD volumes handle small or random I/O much more efficiently than HDD volumes.

When small I/O operations are physically contiguous, Amazon EBS attempts to merge them into a single I/O up to the maximum size. For example, for SSD volumes, a single 1,024 KiB I/O operation counts as 4 operations (1,024÷256=4), while 8 contiguous I/O operations at 32 KiB each count as 1operation (8×32=256). However, 8 random I/O operations at 32 KiB each count as 8 operations. Each I/O operation under 32 KiB counts as 1 operation.

LEARN MORE: http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ebs-io-characteristics.html

## Security

* In Amazon IAM, a user can belong to up to 10 different groups.

LEARN MORE: http://docs.aws.amazon.com/IAM/latest/UserGuide/LimitationsOnEntities.html

* The default maximum number of Access Keys per user is 2. Users need their own access keys to make programmatic calls to AWS from the AWS Command Line Interface (AWS CLI), Tools for Windows PowerShell, the AWS SDKs, or direct HTTP calls using the APIs for individual AWS services. To fill this need, you can create, modify, view, or rotate access keys (access key IDs and secret access keys) for IAM users.
LEARN MORE: http://docs.aws.amazon.com/IAM/latest/UserGuide/LimitationsOnEntities.html

* While creating an IAM policy, it includes many elements that you can use to define or create a policy. The elements that a policy can contain are as follows: Version, Id, Statement, Sid, Effect, Principal, NotPrincipal, Action, NonAction, Resource, NotResource, Condition, and Supported Data Types.

LEARN MORE: http://docs.aws.amazon.com/IAM/latest/UserGuide/reference_policies_elements.html

* If there are multiple condition operators, or if there are multiple keys attached to a single condition operator, the conditions are evaluated using a logical AND.

LEARN MORE: http://docs.aws.amazon.com/IAM/latest/UserGuide/AccessPolicyLanguage_ElementDescriptions.html

* The cost of an IAM user or groups can never be tracked separately for the purpose of billing. The best solution in this case is to create a separate account for each department and use consolidated billing.

LEARN MORE: http://docs.aws.amazon.com/IAM/latest/UserGuide/IAM_Introduction.html

* If an organization has created the IAM users, the users can access AWS services either with an IAM specific login/password for console. The organization can generate the IAM X.509 certificates to access AWS with CLI. The organization can also enable MFA for each IAM user, which allows an added security for each IAM user. If the organization has created the access key and secret key, then the user cannot access the console using those keys. They can only access AWS CLI, direct API calls from other AWS services, and AWS SDKs.

LEARN MORE: http://docs.aws.amazon.com/IAM/latest/UserGuide/IAM_Introduction.html

* Newly created IAM users have no password and no access key (access key ID and secret access key). If the user needs to administer your AWS resources using the AWS Management Console, you can create a password for the user. If the user needs to interact with AWS programmatically (using the command line interface (CLI), the AWS SDK, or service-specific APIs), you can create an access key for that user. The credentials you create for users are what they use to uniquely identify themselves to AWS.

LEARN MORE: http://docs.aws.amazon.com/IAM/latest/UserGuide/Using_WorkingWithGroupsAndUsers.html

* Generally with IAM users, the password can be modified in two ways. The first option is to define the IAM level policy which allows each user to modify their own passwords. The other option is to create a group and create a policy for the group which can change the passwords of various IAM users.

LEARN MORE: http://docs.aws.amazon.com/IAM/latest/UserGuide/HowToPwdIAMUser.html

* If the user wants to temporarily stop the access to S3 the best solution is to disable the keys.  Deleting the user will result in a loss of all the credentials and the app will not be useful in the future. If the user stops the instance IAM users can still access S3. The change of the key does not help either as they are still active. The best possible solution is to disable the keys.

LEARN MORE: http://docs.aws.amazon.com/IAM/latest/UserGuide/ManagingCredentials.html

* When a request is made, the AWS IAM policy decides whether a given request should be allowed or denied. The evaluation logic follows these rules:

  - By default, all requests are denied. (In general, requests made using the account credentials for resources in the account are always allowed.)
  - An explicit allow policy overrides this default.
  - An explicit deny policy overrides any allows.  

In this case since there is an explicit deny policy, it will over ride everything and the request will be denied.

LEARN MORE: http://docs.aws.amazon.com/IAM/latest/UserGuide/AccessPolicyLanguage_EvaluationLogic.html

* The statement is the main element of the IAM policy and it is a must for a policy. Elements such as condition, version and ID are not required.

LEARN MORE: http://docs.aws.amazon.com/IAM/latest/UserGuide/AccessPolicyLanguage_ElementDescriptions.html

* With AWS IAM a user is creating an application which runs on an EC2 instance and makes requests to AWS, such as DynamoDB or S3 calls. Here it is recommended that the user should not create an IAM user and pass the user's credentials to the application or embed those credentials inside the application. Instead, the user should use roles for EC2 and give that role access to DynamoDB /S3. When the roles are attached to EC2, it will give temporary security credentials to the application hosted on that EC2, to connect with DynamoDB / S3.

LEARN MORE: http://docs.aws.amazon.com/IAM/latest/UserGuide/Using_WorkingWithGroupsAndUsers.html

* In addition to supporting IAM user policies, some services support resource-based permissions, which let you attach policies to the service's resources instead of to IAM users or groups. Resource-based permissions are supported by Amazon S3, Amazon SNS, Amazon SQS, Amazon Glacier..

LEARN MORE: http://docs.aws.amazon.com/IAM/latest/UserGuide/Using_SpecificProducts.html

* Amazon CloudWatch integrates with AWS Identity and Access Management (IAM) so that you can specify which CloudWatch actions a user in your AWS Account can perform. For example, you could create an IAM policy that gives only certain users in your organization permission to use GetMetricStatistics. They could then use the action to retrieve data about your cloud resources.

You can't use IAM to control access to CloudWatch data for specific resources. For example, you can't give a user access to CloudWatch data for only a specific set of instances or a specific LoadBalancer. Permissions granted using IAM cover all the cloud resources you use with CloudWatch. In addition, you can't use IAM roles with the Amazon CloudWatch command line tools.

Using Amazon CloudWatch with IAM doesn't change how you use CloudWatch. There are no changes to CloudWatch actions, and no new CloudWatch actions related to users and access control.

LEARN MORE: http://docs.aws.amazon.com/AmazonCloudWatch/latest/DeveloperGuide/UsingIAM.html

* AWS Identity and Access Management is a web service that enables Amazon Web Services (AWS) customers to manage users and user permissions in AWS. The service is targeted at organizations with multiple users or systems that use AWS products such as Amazon EC2, Amazon RDS, and the AWS Management Console. With IAM, you can centrally manage users, security credentials such as access keys, and permissions that control which AWS resources users can access.

In addition to supporting IAM user policies, some services support resource-based permissions, which let you attach policies to the service's resources instead of to IAM users or groups. Resource-based permissions are supported by Amazon S3, Amazon SNS, Amazon SQS, and other AWS services.

The resource-level permissions service supports IAM policies in which you can specify individual resources using Amazon Resource Names (ARNs) in the policy's Resource element. 

Some services support resource-level permissions only for some actions.

LEARN MORE: http://docs.aws.amazon.com/IAM/latest/UserGuide/Using_SpecificProducts.html

* A Hardware Security Module (HSM) is a hardware appliance that provides secure key storage and cryptographic operations within a tamper-resistant hardware device. They are designed to securely store cryptographic key material and also to be able to use this key material without exposing it outside the cryptographic boundary of the appliance.

LEARN MORE: https://aws.amazon.com/cloudhsm/faqs/

* The AWS CloudHSM service defines a resource known as a high-availability (HA) **partition group**, which is a virtual partition that represents a group of partitions, typically distributed between several physical HSMs for high-availability. 

LEARN MORE: http://docs.aws.amazon.com/cloudhsm/latest/userguide/configuring-ha.html

* In relation to AWS CloudHSM, High-availability (HA) recovery is hands-off resumption by failed HA group members.
Prior to the introduction of this function, the HA feature provided redundancy and performance, but required that a failed/lost group member be **manually** reinstated.

LEARN MORE: http://docs.aws.amazon.com/cloudhsm/latest/userguide/ha-best-practices.html

* In AWS CloudHSM, you can perform a remote backup/restore of a Luna SA partition if you have purchased a Luna Backup HSM. 

LEARN MORE: http://docs.aws.amazon.com/cloudhsm/latest/userguide/cloud-hsm-backup-restore.html

* You can protect data at rest in Amazon S3 by using three different modes of server-side encryption: SSE-S3, SSE-C, or SSE-KMS.

LEARN MORE: http://docs.aws.amazon.com/kms/latest/developerguide/services-s3.html

* A configuration item represents a point-in-time view of the various attributes of a supported AWS resource that exists in your account. The components of a configuration item include metadata, attributes, relationships, current configuration, and related events. AWS Config creates a configuration item whenever it detects a change to a resource type that it is recording. For example, if AWS Config is recording Amazon S3 buckets, AWS Config creates a configuration item whenever a bucket is created, updated, or deleted.

LEARN MORE: http://docs.aws.amazon.com/config/latest/developerguide/config-concepts.html

## Database

