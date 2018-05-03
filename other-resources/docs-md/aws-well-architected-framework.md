### Aws Training And Certification
## Aws Well Architected Framework
[Aws Training And Certification](https://www.aws.training/transcript/curriculumplayer?transcriptId=7pGhstV90E2g0kMQPRm6kg2)

### AWS Well-Architected – Module 1: The AWS Well-Architected Framework   

* Pillars
  * Security
    * Identity and Access Management
	* Detective Controls
	* Infrastructure Protection
	* Data Protection
	* Incident Response
  * Reliability
    * Foundations
	* Change Management
	* Failure Management
  * Performance
    * Selection
	* Review
	* Monitoring
	* Trade-off
  * Cost Optimization
    * Cost-effective resources
	* Match supply and demand
	* Expenditure awarness
	* Optimizing overtime
  * Operational Excellence
    * Preparation
	* Operations
	* Responses
  
### AWS Well-Architected – Module 2: The Security Pillar  
* Key Service: IAM
* 5 Areas
    * Identity and Access Management
	* Detective Controls
	  CloudTrail, AwsConfig, CloudWatch  
	* Infrastructure Protection
	  VPC
	* Data Protection
	  ELB, EBS, S3, RDS ==> KMS
	* Incident Response
	  IAM, CloudFormation
* IAM: ACL, Role, MFA
* Amazon COgnito
  SSO
	
	
### AWS Well-Architected – Module 3: The Reliability Pillar   
* Key Servie: CloudWatch
* Areas
  * Foundations: IAM, VPC
  * Change Management: CloudTrail, Aws Config
  * Failure Management: CloudFormation
* High Availability
  * No single point of failure
  * Multi AZ
  * Load Balancing
  * Auto Scaling
  * Redundant Connectivity

### AWS Well-Architected – Module 4: The Performance Efficiency Pillar   
* Key Service: CloudWatch
    * Selection: EBS, AutoScaling, S3, Glacier, RDS, DynamoDB
	* Review: CloudFormation, Aws Blog & Aws Whats New
	* Monitoring: CloudWatch, Aws LAmbda
	* Trade-off: CloudFront, Elasticache, Snowball
* CloudWatch (Monitor)--> Raise Alarms ==> Actions Performed by --> Kinesis, SQS, Lambda
	
### AWS Well-Architected – Module 5: The Cost Optimization Pillar  
* Key Service: Cost Allocation Tags
    * Cost-effective resources: Reserved INstance, Aws Trusted Advisor
	* Match supply and demand: AutoScaling
	* Expenditure awarness: CloudWatch, SNS
	* Optimizing overtime: Aws Blog & Whats New, Aws Trusted Advisor
	
### AWS Well-Architected – Module 6: The Operational Excellence Pillar 
* Key Service: CloudFormation
    * Preparation: CloudTrail, CodeDeploy, CodeCommit, CodePipeline, Aws SDKs
	* Operations
	* Responses: CloudWatch




