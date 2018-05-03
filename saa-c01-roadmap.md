<a id="top" />

# SAA-C01 - Released February 2018
AWS Certified Solutions Architect Associate

### Content
* [Exam Approaching](#exam-approaching)
* [AWS Recommended Resources](#aws-recommended-resources)
* [Question Points](#question-points)
* [Big Summary](#big-summary)

### Exam Approaching

* [AWS Manin Site](https://aws.amazon.com/certification/certified-solutions-architect-associate/)
* [Exam Guide](https://d1.awsstatic.com/training-and-certification/docs-sa-assoc/AWS_Certified_Solutions_Architect_Associate_Feb_2018_%20Exam_Guide_v1.5.2.pdf)
* [Sample Exam Questions](https://d1.awsstatic.com/training-and-certification/docs-sa-assoc/AWS_Certified_Solutions%20Architect_Associate_Feb_2018_Sample%20Questions_v1.0.pdf)
* Exam Description
  - Multiple-Choice (1 of 4) & Multiple-response (2 of 5)
  - 100-1000 with a minimum passing score of 720
  - 65 questions in 130 Minutes (2" per question)
  - Practice Exam Fee 20 usd
  - Exam fee 150 usd
  - Domains
    * 1 34% Design Resilient Archs
    * 2 24% Define Performant Archs
    * 3 26% Specify Secure Apps & Archs
    * 4 10% Design Cost-Optimized Archs
    * 5  6% Define Operationally Excellent Arhcs

### AWS Recommended Resources

- Recommended for SA Associate - 2018 
  * [AWS Well-Architected](https://aws.amazon.com/architecture/well-architected/)
  * [Architecting for the Cloud - AWS Best Practices - February 2016](https://d0.awsstatic.com/whitepapers/AWS_Cloud_Best_Practices.pdf)
- Recommended for SA Associate
  * [Overview of Amazon Web Services - April 2017](https://d1.awsstatic.com/whitepapers/aws-overview.pdf)
  * [Overview of Security Processes - June 2016](http://d0.awsstatic.com/whitepapers/Security/AWS%20Security%20Whitepaper.pdf)
  * [Amazon Web Services: Risk and Compliance - May 2017](https://d1.awsstatic.com/whitepapers/compliance/AWS_Risk_and_Compliance_Whitepaper.pdf)
  * [AWS Storage Services Overview - A Look at Storage Services Offered by AWS - Dec 2016](https://d1.awsstatic.com/whitepapers/Storage/AWS%20Storage%20Services%20Whitepaper-v9.pdf)
- Others Recommended
  * [FAQs Summary](https://github.com/escamarla/aws-training/blob/master/exam-preparation/faqs/aws-faqs-summary.md)
  * [White papers recommended by ACG](https://github.com/escamarla/aws-training/blob/master/exam-preparation/docs-md/docs-to-read.md/#wp)
- AWS Playlist. https://www.youtube.com/user/AmazonWebServices/
  * [AWS re:Invent 2017: A Field Guide to Monitoring on the AWS Cloud: From Lift and Shif (DEV209)](https://www.youtube.com/watch?v=HjhqjG3YWFI&list=PLhrlKZpdzukf34vxrO18JKjMLT_5tGNJi)
  * [AWS re:Invent 2017: The Open Guide to AWS: A GitHub-Based Resource for Practitioners (DVC202)](https://www.youtube.com/watch?v=6LFE4IijMXw&list=PLhrlKZpdzukcXiSxwm8Q-A14n17gZj_kT)
  * [AWS re:Invent 2017: A story of Netflix and AB Testing in the User Interface using Dy (DAT308)](https://www.youtube.com/watch?v=k8PTetgYzLA&list=PLhrlKZpdzuketnzOgclLSIXCacM84ryFX)
  * [AWS re:Invent 2017: Amazon EC2 Foundations (CMP203)](https://www.youtube.com/watch?v=97Wi7V1wLYA&list=PLhrlKZpdzukeiPpqZ3C7r-6DDqr0pWTow)

<p align="right"><a href="#top">Top</a></p>

### Question Points

* min size ESB = 1 GiB
* dedicate hosting state transitions = dedicated & host & vs
* rds failover = failure primary, network primary & loss AZ primary
* vpc peering needs: +route in RT with your VPC (private IP)
* ec2 inst types: mem & iops
* read replicas with MultiAZ not possible
* max retention period for RDS automated backups = 35 days
* cross-region replication s3 = versioning enabled on both 
* automate rds backups = automate snapshots & automated backups
* delete incomplete multipart uploads s3 = s3 lifecycle policies
* trusted adv = YES SG + ports, MFA on Root. 
* trusted adv = NO antivirus on ec2, nor vulnerabilities on VPC
* IAM policies deny access to root: NO
* read replicas = async
* multi az = sync
* min size s3 object = 0 bytes
* VPN conn = 1.vpc w/hardware vpn access 2.on-premise CG & 3.VPG w/public IP
* aws support = enterprise, business, developer plus the basic free level
* aws sms concurrent vmware vms migrated = 50


<p align="right"><a href="#top">Top</a></p>

### Big Summary

* Well Architected Framework
  - [AWS Training summary](https://github.com/escamarla/aws-training/tree/master/aws/aws-well-architected-training)
  - [A Cloud Guru](https://github.com/escamarla/aws-training/blob/master/a-cloud-guru/02-certified-solutions-architect-associate-2018/readme.md#waf)
  - [AWS Well-Architected Framework November 2017](https://d1.awsstatic.com/whitepapers/architecture/AWS_Well-Architected_Framework.pdf)
* [Service Limits](https://github.com/escamarla/aws-training/blob/master/exam-preparation/docs-md/aws-limits.md)
* [Instance Types](https://github.com/escamarla/aws-training/blob/master/exam-preparation/docs-md/instance-types.md)
* Shares responsability model
  - [Chart](https://github.com/escamarla/aws-training/blob/master/exam-preparation/cloud-academy-summary/28-of-31-2017-exam-primer/00-13-security-responsability.png)
* S3 types availability and durability %
  - https://aws.amazon.com/s3/storage-classes/
* Trusted Advisor Checkpoints
* Diff: SSE-KMS, SSE-S3 & SSE-C
* VPN connection
* Autoscaling and launch configuration
* DR memorize
  - https://github.com/escamarla/aws-training/blob/master/exam-preparation/cloud-academy-summary/28-of-31-2017-exam-primer/00-06-disaster-recovery-comparission.png
* Federation
  - [Federated Identity](https://github.com/escamarla/aws-training/blob/master/exam-preparation/cloud-academy-summary/28-of-31-2017-exam-primer/00-15-federate-identity.png)
  - [Fed Id with Cognito](https://github.com/escamarla/aws-training/blob/master/exam-preparation/cloud-academy-summary/28-of-31-2017-exam-primer/00-16-federate-identity-aws-cognito.png)
  - [SAML]()
* [HA Top 10](https://github.com/escamarla/aws-training/blob/master/exam-preparation/cloud-academy-summary/28-of-31-2017-exam-primer/00-09-ha-top-ten.png)
* EC2 States
  - [Sate Machine](https://github.com/escamarla/aws-training/blob/master/exam-preparation/cloud-academy-summary/28-of-31-2017-exam-primer/00-02-ec2-states.png)
  - [Comparission](https://github.com/escamarla/aws-training/blob/master/exam-preparation/cloud-academy-summary/28-of-31-2017-exam-primer/00-03-ec2-differences-stop-reboot-terminate.png)
* [Encryption Options](https://github.com/escamarla/aws-training/blob/master/exam-preparation/cloud-academy-summary/28-of-31-2017-exam-primer/00-21-aws-encryption-options.png)
* [Service Catalog](https://github.com/escamarla/aws-training/blob/master/exam-preparation/docs-md/aws-services-catalog.md)


<p align="right"><a href="#top">Top</a></p>


The End
