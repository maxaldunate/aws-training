CloudAcademy Course
# Working with AWS's Domain Name System: Amazon Route 53
Video at ...  
https://cloudacademy.com/amazon-web-services/amazon-route53-dns-course/


## Overview Route 53

**Highly Available & Scalable Domain Name System** 

### DNS
* Hierarchical distributed naming system
* Translation from domain name to IP address
* Resource Records contain different types of info
* Descendent tree from right -to-> left

### Hosted Zones (HZ)

* Resources Recod Set

* How to route traffic

* Types
	* Public HZ
	* Private HZ --> pointing to VPC

### Domains Supported by Route 53
	* Generic Top Level Domain (TLD)
	* Geographics Domains

### Resource Record Types  
A, CNAME, AAA, ... many more 

### Routing Policy
* Simple. ex. simple web server
* Weighted  
   3 servers with 2+2+6 means 20%+20%+60%
* Latency: multiple datacenter locations
* Failover (Public Zones only)  
  * Active-Passive
  * Active-Active
* Geo-Location: continent, country or US states. If overlap the smaller wins.

### Pricing
* HZ  
0.50 per HZ/mo till 25 HZ. 0.10 over
* Latency  
  * Std - Query 0.40 per millon queries/mo till 1 billon. 0.20 over
  * Other-Query 0.60 per millon queries/mo till 1 billon. 0.30 over
* Geo-DNS
  * 0.70 per millon queries/mo till 1 billon. 0.35 over
* AWS queries mapped to ELB, CloudFront or Amazon S3 are for free
* Health-Checks
  * Basic       aws-endpoint 0.50 each HCheck/mo
  * Basic   non-aws-endpoint 0.75 each HCheck/mo
  * Special     aws-endpoint 1.00 each HCheck/mo
  * Special non-aws-endpoint 2.00 each HCheck/mo
* Domain Names purchased detailed in the table

### SLA. 100%
Monthly billying cycle not fail  
Service Credit Model if down
You need to claim en aws support


## Domain Name Management
* Register a Domain
* Transfering a Domain Name

## DNS Failover
* Active-Passive
* Active-Active
* Mixed  

### Demonstration  
* Create HZ
* Create Health Checks
* Create Record Set in HZ (Right windows on pane)
  * Name
  * TTL to 60
  * Value: IP of the web server
  * Routing Policiy : [Failover] in the demosntration case
  * Associate with health-check 
  
 