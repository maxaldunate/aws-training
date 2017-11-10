# AWS - Certified developer foundations course
[Cloudacademy.com](https://cloudacademy.com)


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


### Storas Options
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

Minute 14.37
https://cloudacademy.com/amazon-web-services/certified-developer-foundations-course/certified-developer-EC2.html

### Security


