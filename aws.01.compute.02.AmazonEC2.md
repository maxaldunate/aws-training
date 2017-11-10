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
	- Nothing on the video :(
* Dedicated Hosts
	- Nothing on the video :(


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

The end

