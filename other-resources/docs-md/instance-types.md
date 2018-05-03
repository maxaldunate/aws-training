# AWS EC2 Instance Types & EBS Types

## Mnemonics
**DR MC GIFT PX**

## Mnemonics Table

|Mn|for ...|Letter|Specialty|Use Case|
|:---:|---|:---:|---|---|
|**D**|Density|D-**2**|Dense storage|FileServers - DW - Hadoop|
|**R**|RAM|R-**4**|Mem opt|Mem intense apps - DBs|
|.|||||
|**M**|Main choice general purpose apps|M-4|G.Purpose|Apps Servers|
|**C**|Compute|C-**4**|Compute opt|CPU intensive apps - DBs|
|.|||||
|**G**|Graphics|G-**2**|Graphics Intensive|Video Encoding - 3D app streaming|
|**I**|IOPS|I-**2**|High speed storage|NoSql DBs - DW - etc.|
|**F**|FPGA|F-**1**|Field Programmable Gate Array|Hardware acceleration|
|**T**|cheap general purpose|T-**2**|Low cost G.Purpose|WebServers - Small DBs|
|.|||||
|**P**|Graphics|P-**2**|Graphics - G.Purpose GPU|Machine L. - BC Mining|
|**X**|Extreme Memory|X-**1**|Mem opt|SAP Hana - Apache Spark|


## Instance Size - Normalization Factors

|Instance Size|Normalization Factor|
|:---:|:---:|
|micro|0.5|
|small|1|
|medium|2|
|xlarge|4|
|2xlarge|8|
|4xlarge|16|
|8xlarge|32|
|10xlarge|64|


[Normalization Factors](https://raw.githubusercontent.com/escamarla/aws-training/master/a-cloud-guru/03-certified-solutions-architect-professional/domain2-costing-and-acc-mgmnt/Screenshot%20from%202018-02-04%2015-06-12.png)


## EBS Types
|Code|Name|Hardware|Use|
|---|---|---|---|
|GP2|General Purpose|SSD|Up to 10.000 IOPS|
|IO1|Provisiones IOPs|SSD|More than 10.000 IOPS|
|ST1|Throughput Optimized|HDD|Frequently accessed workloads|
|SC1|Cold|HDD|Less frequently accessed data|
|Magnetic|Magnetic|HDD|Standard - Cheap, infrequently accessed storage|


## Links to my summary

* [EC2 Instance Types](https://github.com/escamarla/aws-training/blob/master/a-cloud-guru/certified-developer-associate-2018/04-ec2/Screenshot%20from%202018-03-01%2020-38-12.png)
* [Instance Types Mnemonics](https://github.com/escamarla/aws-training/blob/master/a-cloud-guru/certified-developer-associate-2018/04-ec2/Screenshot%20from%202018-03-01%2020-40-52.png)
* [EBS Types](https://github.com/escamarla/aws-training/blob/master/a-cloud-guru/certified-developer-associate-2018/04-ec2/Screenshot%20from%202018-03-01%2020-43-15.png)