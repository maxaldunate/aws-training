# AWS Service Limits  
https://docs.aws.amazon.com/general/latest/gr/aws_service_limits.html  


| Resource  | Limit | Obvs |
| --- |  ---: | --- |
| **Auto Scaling** |||
| Launch configurations per region | 200 ||
| Auto Scaling groups per region | 200 ||
| **AWS CloudFormation** |  ||
| Stacks | 200 ||
| Stack sets | 20 ||
| Stack instances per stack set | 500 ||
| **Amazon CloudFront** |  ||
| Web distributions per account | 200 ||
| Alternate domain names (CNAMEs) per distribution | 100 ||
| **AWS CloudTrail** |  ||
| Trails per region | 5 ||
| **Amazon CloudWatch** |  |
| Alarms | 5.000 per region | 10 per months for free |
| Rules | 100 |per region per account|
| CreateLogGroup | 5.000 |log groups/account/Region|
| **AWS CodeCommit** |  ||
|Number of repositories|1.000||
| **AWS Data Pipeline** |  ||
| Number of pipelines | 100 |Adjustable|
| **AWS Direct Connect** |  ||
| Virtual interfaces per AWS Direct Connect connection | 50 ||
| Active AWS Direct Connect connections per region per account |10||
| **Amazon DynamoDB** |  ||
| Maximum CU per table or GSI |10,000 RCU & 10.000 WCU|40.000 for N.Virginia|
| Maximum CU per account |20,000 RCU & 20.000 WCU|80.000 for N.Virginia|
| Maximum number of tables |256||
| **AWS Elastic Beanstalk** |  ||
| Applications |75||
| App Versions |1.000||
| Environments |200||
| **Amazon EBS** |  ||
| Number of EBS snapshots |10.000||
| Total volume storage **gp2** |100 TiB|General Purpose SSD|
| Total volume storage **io1** |100 TiB|Provisioned IOPS SSD|
| Total volume storage **st1** |300 TiB|Throughput Optimized HDD|
| Total volume storage **sc1** |300 TiB|Cold HDD|
| Total volume storage **standard**|20 TiB|Magnetic|
| Total provisioned IOPS |200.000||
| **Amazon EC2** |  ||
| Elastic IP addresses |5| for EC2-Classic|
| Security groups|500|for EC2-Classic per instance|
| Rules per security group |100|for EC2-Classic|
| Key pairs |5.000||
| On-Demand Instances | 1 to 20 |depend on type and family|
| Spot Instances | Dynamic |[Link](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/using-spot-limits.html?shortFooter=true)|
| Reserved Instances |20|per Availability Zone, per month, plus 20 regional|
| Dedicated Hosts | 2 x family |Up to two Dedicated Hosts per instance family, per region |
| **Amazon ECS** |  ||
|  |  ||
|  |  ||
|  |  ||
|  |  ||
|  |  ||
|  |  ||
|  |  ||
|  |  ||
|  |  ||
|  |  ||
|  |  ||
|  |  ||
|  |  ||
|  |  ||
|  |  ||
|  |  ||
|  |  ||
|  |  ||
|  |  ||
|  |  ||
|  |  ||
|  |  ||
|  |  ||
|  |  ||
|  |  ||
|  |  ||
|  |  ||
|  |  ||
|  |  ||
|  |  ||
|  |  ||
|  |  ||
|  |  ||
|  |  ||
|  |  ||
|  |  ||
|  |  ||
|  |  ||
|  |  ||
|  |  ||
|  |  ||
|  |  ||
|  |  ||
|  |  ||
|  |  ||
|  |  ||
|  |  ||
|  |  ||
|  |  ||
|  |  ||
|  |  ||
|  |  ||
|  |  ||
|  |  ||
|  |  ||
|  |  ||
|  |  ||
|  |  ||

