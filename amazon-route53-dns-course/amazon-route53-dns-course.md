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

### SLA
* 100%
* Monthly billying cycle not fail  
* Service Credit Model if down
* You need to claim en aws support


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
  
## DNS Latency Based Routing

**Very important the healtch check for 'smart' balancing**

### Demonstration
* Scenario
  * On region us-west-1
    * WebSever on EC2 instance
	* WebSever on EC2 instance
  * On region us-west-2
    * WebSever on EC2 instance
	* WebSever on EC2 instance
* Create a RecordSet
  * 4 'A' records, No Alias records.
    All 4 pointing to instances, same domain 'example.com'
  * Routing policy **'WEIGHTED'**
  * Weight '60' and Set Id 'w-1'
  * Associate Health-Check
* Create Latency Alias
  * Alias: Yes
  * Target www.example.com
  * Routing Policy **'LATENCY'**
  * Region us-west-1
  * Set Id: 1
  * Evaluated together Health-Check: YES
  
  
### Private Hosted Zones

* Domain Associate with a VPC for internal Routing
* Split-Horizons DNS
  * Private and public HZs for 1 domain
  * Aka: Split-View, Split-Brains or SPlit DNS
* Provides differents authoritative answers based on location of query
  * One answer for internal queries and other for external
* On VPC you MUST enable ´enableDnsHostnames´ & ´enableDnsSupport´
* Can't associate with health-checks
* Private HZ take precedence over pubic ones
* Can't create NS records
* IP address of DNS is VPC base +2 [ex. vpc 10.0.0.0/16 --> then DNS 10.0.0.2]

Recommended Course ... 
Working with AWS Networking and Amazon VPC  
https://cloudacademy.com/amazon-web-services/amazon-vpc-networking-course/  

### Demonstration
* Enable hostname & support on VPC
* Route 53 --> Create HZ, Type Private
* VPC Id - Select Associate
* From main you can "Associate new VPC" or delete
* Create the record set with the IP Value


## Healt-Checks and DNS Failover

* It Behaves like a tree
  * Going down to find the health instance
  * Going up if the instance fails

* Simple Configuration
  * If all instances are unhealthy answer one instance
  * If no health-check, answer one instance
  
* Complex Configuration  
Combination of RR sets  
ex. Latency, Geolocation  

* Demonstration: create a health-check
  * HTTP/S --> us-1-region.example.com
  * TCP
  * Port and Path (If http/s)
  * Domain Name or IP address
  * Request Interval
  * Cloud Watch Alarm
  * **TAKE CARE TO DELETE**
    You can delete easily but maybe all configuration relies on it.
