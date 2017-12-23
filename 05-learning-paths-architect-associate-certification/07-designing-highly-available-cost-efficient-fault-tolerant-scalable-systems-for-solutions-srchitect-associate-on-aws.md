# Designing Highly Available, Cost Efficient, Fault Tolerant, Scalable Systems
# for Solutions Architect Associate on AWS

[Cloudacademy Course](https://cloudacademy.com/amazon-web-services/designing-highly-available-cost-efficient-fault-tolerant-scalable-systems-course/)

## Elasticity and Scalability

## Designing for Disaster Recovery / Business Continuity

* Concepts
  - RTO: Recovery Time Objective. Ex. 8 hs
  - RPO. Recovery Point Objective. Ex. 1 hour (data loss allowed)

* Scenarios
  - Backup & Restore
  - Pilot Light
  - Warm Standby
  - Multi Site
  
* Backup & Restore
  * Direct Connect
  * Aws Storage Gateway
    - Sub 1
	- Sub 2
  * Aws Import/Export
  * Considerations
    * Retention time for media
	* Security of archives
	* Requires regular testing

