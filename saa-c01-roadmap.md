<a id="top" />

# SAA-C01 - Released February 2018
AWS Certified Solutions Architect Associate

### Content
* [Exam Approaching](#exam-approaching)
* [AWS Recommended Resources](#aws-recommended-resources)
* [Question Points](#question-points)
* [Main Summary](#main-summary)

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

| Question/Subject | Response |
| --- | ---: |
| min size ESB | 1 GiB |
| dedicate hosting state transitions | dedicated & host & vs |
| RDS failover | failure primary, network primary & loss AZ primary |
| VPC peering needs | +route in RT with your VPC (private IP) |
| ec2 inst types | mem & iops |
| read replicas with MultiAZ | not possible |
| max retention period for RDS automated backups | 35 days |
| cross-region replication s3 | versioning enabled on both |
| automate rds backups | automate snapshots & automated backups |
| delete incomplete multipart uploads s3 | s3 lifecycle policies |
| trusted adv | YES SG + ports, MFA on Root.  |
| trusted adv | NO antivirus on ec2, nor vulnerabilities on VPC |
| IAM policies deny access to root | NO |
| read replicas s/a | async |
| multi az s/a | sync |
| min size s3 object | 0 bytes |
| VPN conn | -vpc hw vpn access -on-prem CG -VPG public IP |
| aws support | enter., business, devs + basic free level |
| aws sms concurrent vmware vms migrated | 50 |
| record configuration changes | aws config |
| cloudwatch defaul metric for rds | memory usage |
| write to edge location | true |
| use ms win server license | dedicated host is required |
| vpc peering not support | edge-to-edge routing |
| Elastic IP addresses [EIP] | max 5 |
| EBS multiple physical volumes in the same AZ | true |
| RDS enables autom backups with 1 day ret.p. | by default  |
| max s3 buckets by default | 100 |
| who delete a version of s3 object | just the owner |
| min & max size EBS SSD | 1 GiB to 16 TiB |
| S3 supports redirects | Yes |
| aws services supporting stateless web servers | RDS+ECache+Dynamo. No ELB |
| Read Replicas not supported engines | Oracle & SQL Server |
| Glacier first-byte latency | 3-5 hours |
| Securely to/from S3 | Via HTTP or SSL endpoints using HTTPS protocol |
| RDS upgrade to a larger instance go offline | Yes, for a couple of minutes |
| Condition to IAM policies allowing access by Tags? | yes |







### Main Summary

* [AWS Main Summary](https://github.com/escamarla/aws-training/blob/master/exam-preparation/docs-md/aws-main-summary.md)
* [Service Limits](https://github.com/escamarla/aws-training/blob/master/exam-preparation/docs-md/aws-limits.md)
* [Instance Types](https://github.com/escamarla/aws-training/blob/master/exam-preparation/docs-md/instance-types.md)
* [HA Top 10](https://github.com/escamarla/aws-training/blob/master/exam-preparation/cloud-academy-summary/28-of-31-2017-exam-primer/00-09-ha-top-ten.png)

<p align="right"><a href="#top">Top</a></p>

The End
