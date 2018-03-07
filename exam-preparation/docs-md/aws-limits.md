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
| Clusters per region |1.000||
| Container instances per cluster |1.000||
| Services per cluster |500||
| **Amazon EFS** |  ||
| File systems |10|per AWS region|
| Total throughput per file system for all connected clients | 3 GB/s ||
| **ELB** |  ||
| Load balancers per region |20|soft|
| Listeners per LB |50||
| Targets per LB |1.000||
| Subnets per AZ per LB |1||
| Security groups per LB |5||
| Certificates per load balancer|25|not counting default certificates|
| **Amazon ElastiCache** |  ||
| Nodes per region |100||
| Nodes per cluster (Memcached) |20||
| Nodes per shard (Redis)|6||
| **Amazon Glacier** |  ||
| Number of vaults per account |1.000||
| Number of provisioned capacity units |2||
| **AWS IAM** |  ||
| Customer managed policies |1.500||
| Groups |300||
| Roles |1.000||
| Users |5.000||
| **AWS Import/Export** |  ||
| Snowball |1|soft|
| **AWS KMS** |  ||
| Customer Master Keys (CMKs) |1.000||
| **Amazon Kinesis** |||
| Delivery streams per region |50||
| **AWS Lambda** |||
| Concurrent executions |1.000||
| Memory allocation range |from 128 MB to 3.008 MB|with 64 MB increments|
| Ephemeral disk capacity ("/tmp" space)|512 MB||
| Maximum execution duration per request |300 seconds||
| Lambda function deployment package size (compressed .zip/.jar file)|50 MB||
| Total size of environment variables set |4 KB||
| **AWS OpsWorks** |||
| Chef or Puppet servers |5||
| Stacks |40||
| **Amazon Redshift** |||
| Nodes per cluster |101||
| Nodes |200||
| **Amazon RDS** |||
| Clusters |40||
| Cluster parameter groups |50||
| DB Instances |40||
| Manual snapshots |100||
| Read replicas per master |5||
| Reserved instances (purchased per month)|40||
| **AWS Resource Groups** |  ||
| Resource groups per account|100||
| **Amazon Route 53** |||
| Hosted zones |500||
| Domains |50||
| Resource record sets per hosted zone |10.000||
| Health checks |200||
| Traffic policies |50||
| **Amazon SES** |  ||
| Daily sending quota |200|messages per 24-hour period|
| Maximum send rate | 1 email per second ||
| Recipient address verification |All recipient addresses must be verified||
| **Amazon SNS** |  ||
| Topics |100.000||
| Subscriptions |12,500,000| per topic|
| Delivery rate for promotional SMS messages |20 msgs p/second||
| **Amazon S3** |  ||
| Buckets |100||
| **Amazon VPC** |  ||
| VPCs per region |5|soft up to 5.000|
| Internet gateways per region |5||
| Virtual private gateways per region| 5 ||
| Subnets per VPC |200||
| Customer gateways per region |50|soft|
| VPN connections per region |50||
| VPN connections per VPC |10||
| Route tables per VPC |200||
| Routes per route table |50||
| Elastic IP addresses |5| per region for EC2-VPC|
| Security groups per VPC | 500 ||
| Inbound or outbound rules per security group |50||
| Security groups per network interface | 5 ||
| Network interfaces per instance | - |This limit varies by instance type [Link](http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/using-eni.html#AvailableIpPerENI)|
| Network interfaces per region |350||
| Network ACLs per VPC |200||
| Rules per network ACL |20||
| Active VPC peering connections per VPC |50||


The End