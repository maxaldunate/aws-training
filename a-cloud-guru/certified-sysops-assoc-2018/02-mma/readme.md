<a id="top" />

# Chapter 2. Monitoring, Metrics and Analysis
[Course Dashboard](https://acloud.guru/course/aws-certified-sysops-administrator-associate/dashboard)

## Links
* [Monitoring Memory and Disk Metrics for Amazon EC2 Linux Instances](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/mon-scripts.html)
* [Monitoring the Status of Your Volumes](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/monitoring-volume-status.html#monitoring-volume-checks)
* [Initializing Amazon EBS Volumes](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ebs-initialize.html)
* [Amazon EBS Volume Types](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/EBSVolumeTypes.html)
* [Monitoring the Status of Your Volumes](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/monitoring-volume-status.html)
* [Gibibyte - Wikipedia](https://en.wikipedia.org/wiki/Gibibyte)

## Bootstrap Scrip 'aws-csysops.sh'

```bash
#!/bin/bash
yum install perl-Switch perl-DateTime perl-Sys-Syslog perl-LWP-Protocol-https -y
mkdir /CloudWatch
cd /CloudWatch
curl http://aws-cloudwatch.s3.amazonaws.com/downloads/CloudWatchMonitoringScripts-1.2.1.zip -O
unzip CloudWatchMonitoringScripts-1.2.1.zip
rm -rf CloudWatchMonitoringScripts-1.2.1.zip
cd aws-scripts-mon
./mon-put-instance-data.pl --mem-util --verify --verbose > CloudWatchtest.log
./mon-put-instance-data.pl --mem-util --mem-used --mem-avail
```

## Content

* [CloudWatch Introduction](#intro)
* [EC2 Status Troubleshooting](#ec2)
* [Create A CloudWatch Role](#role)
* [Monitoring EC2 With Custom Metrics](#ec2-custom)
* [Monitoring EBS](#ebs)
* [Monitoring RDS](#rds)
* [Monitoring ELB](#elb)
* [Monitoring Elasticache](#elastic)
* [Consolidated Billing](#billing)
* [AWS Organizations Lab](#org)
* [Billing and Alerts](#alerts)
* [Cost Optimization](#costs)
* [Monitoring and Metrics Quiz](#quiz)

## Lectures

<a id="intro"></a>

### CloudWatch Introduction
<p align="right"><a href="#top">Top</a></p>

![](Screenshot%20from%202018-03-21%2014-51-23.png)
---
![](Screenshot%20from%202018-03-21%2014-51-41.png)
---
![](Screenshot%20from%202018-03-21%2014-52-00.png)
---
![](Screenshot%20from%202018-03-21%2014-52-13.png)
---
![](Screenshot%20from%202018-03-21%2014-52-22.png)
---
![](Screenshot%20from%202018-03-21%2014-53-04.png)
---
![](Screenshot%20from%202018-03-21%2014-54-28.png)
---
![](Screenshot%20from%202018-03-21%2014-55-34.png)
---
![](Screenshot%20from%202018-03-21%2014-56-25.png)
---
![](Screenshot%20from%202018-03-21%2014-56-51.png)
---

<a id="ec2"></a>

### EC2 Status Troubleshooting
<p align="right"><a href="#top">Top</a></p>

![](Screenshot%20from%202018-03-21%2014-57-43.png)
---
![](Screenshot%20from%202018-03-21%2014-59-52.png)
---
![](Screenshot%20from%202018-03-21%2015-00-07.png)
---
![](Screenshot%20from%202018-03-21%2015-02-08.png)
---
![](Screenshot%20from%202018-03-21%2015-02-33.png)
---

<a id="role"></a>

### Create A CloudWatch Role
<p align="right"><a href="#top">Top</a></p>

![](Screenshot%20from%202018-03-21%2015-03-23.png)
---
![](Screenshot%20from%202018-03-21%2015-04-29.png)
---
![](Screenshot%20from%202018-03-21%2015-04-39.png)
---
![](Screenshot%20from%202018-03-21%2015-04-55.png)
---
![](Screenshot%20from%202018-03-21%2015-05-04.png)
---

<a id="ec2-custom"></a>

### Monitoring EC2 With Custom Metrics
<p align="right"><a href="#top">Top</a></p>

![](Screenshot%20from%202018-03-21%2015-13-31.png)
---
![](Screenshot%20from%202018-03-21%2015-13-49.png)
---
![](Screenshot%20from%202018-03-21%2015-35-16.png)
---
![](Screenshot%20from%202018-03-21%2015-35-34.png)
---
![](Screenshot%20from%202018-03-21%2015-35-46.png)
---
![](Screenshot%20from%202018-03-21%2015-36-43.png)
---
![](Screenshot%20from%202018-03-21%2015-36-51.png)
---
![](Screenshot%20from%202018-03-21%2015-37-03.png)
---
![](Screenshot%20from%202018-03-21%2015-37-40.png)
---
![](Screenshot%20from%202018-03-21%2015-48-36.png)
---
![](Screenshot%20from%202018-03-21%2015-49-20.png)
---
![](Screenshot%20from%202018-03-21%2015-50-25.png)
---
![](Screenshot%20from%202018-03-21%2015-53-05.png)
---
![](Screenshot%20from%202018-03-21%2015-54-10.png)
---
![](Screenshot%20from%202018-03-21%2015-55-51.png)
---
![](Screenshot%20from%202018-03-21%2015-56-31.png)
---
![](Screenshot%20from%202018-03-21%2015-56-35.png)
---
![](Screenshot%20from%202018-03-21%2015-57-59.png)
---
![](Screenshot%20from%202018-03-21%2015-58-03.png)
---
![](Screenshot%20from%202018-03-21%2015-59-16.png)
---
![](Screenshot%20from%202018-03-21%2016-01-28.png)
---
![](Screenshot%20from%202018-03-21%2016-05-14.png)
---
![](Screenshot%20from%202018-03-21%2016-08-48.png)
---
![](Screenshot%20from%202018-03-21%2016-09-00.png)
---
![](Screenshot%20from%202018-03-21%2016-11-32.png)
---

<a id="ebs"></a>

### Monitoring EBS
<p align="right"><a href="#top">Top</a></p>

![](Screenshot%20from%202018-03-21%2016-27-02.png)
---
![](Screenshot%20from%202018-03-21%2016-27-13.png)
---
![](Screenshot%20from%202018-03-21%2016-28-01.png)
---
![](Screenshot%20from%202018-03-21%2016-30-03.png)
---
![](Screenshot%20from%202018-03-21%2016-43-11.png)
---
![](Screenshot%20from%202018-03-21%2016-44-56.png)
---
![](Screenshot%20from%202018-03-21%2016-45-49.png)
---
![](Screenshot%20from%202018-03-21%2016-46-48.png)
---
![](Screenshot%20from%202018-03-21%2016-47-18.png)
---
![](Screenshot%20from%202018-03-21%2016-50-00.png)
---
![](Screenshot%20from%202018-03-21%2016-50-43.png)
---
![](Screenshot%20from%202018-03-21%2016-52-01.png)
---
![](Screenshot%20from%202018-03-21%2016-54-18.png)
---
![](Screenshot%20from%202018-03-21%2016-54-25.png)
---
![](Screenshot%20from%202018-03-21%2016-55-19.png)
---
![](Screenshot%20from%202018-03-21%2016-56-36.png)
---
![](Screenshot%20from%202018-03-21%2016-57-57.png)
---

<a id="rds"></a>

### Monitoring RDS
<p align="right"><a href="#top">Top</a></p>

![](Screenshot%20from%202018-03-21%2016-59-44.png)
---
![](Screenshot%20from%202018-03-21%2019-05-01.png)
---
![](Screenshot%20from%202018-03-21%2019-05-44.png)
---
![](Screenshot%20from%202018-03-21%2019-05-56.png)
---
![](Screenshot%20from%202018-03-21%2019-06-38.png)
---
![](Screenshot%20from%202018-03-21%2019-07-21.png)
---
![](Screenshot%20from%202018-03-21%2019-07-50.png)
---
![](Screenshot%20from%202018-03-21%2019-08-48.png)
---
![](Screenshot%20from%202018-03-21%2019-09-35.png)
---
![](Screenshot%20from%202018-03-21%2019-09-44.png)
---
![](Screenshot%20from%202018-03-21%2019-10-10.png)
---

<a id="elb"></a>

### Monitoring ELB
<p align="right"><a href="#top">Top</a></p>

![](Screenshot%20from%202018-03-21%2019-16-26.png)
---
![](Screenshot%20from%202018-03-21%2019-22-53.png)
---
![](Screenshot%20from%202018-03-21%2019-23-46.png)
---
![](Screenshot%20from%202018-03-21%2019-24-24.png)
---

<a id="elastic"></a>

### Monitoring Elasticache
<p align="right"><a href="#top">Top</a></p>

![](Screenshot%20from%202018-03-21%2019-27-10.png)
---
![](Screenshot%20from%202018-03-21%2019-27-14.png)
---
![](Screenshot%20from%202018-03-21%2019-27-35.png)
---
![](Screenshot%20from%202018-03-21%2019-29-08.png)
---
![](Screenshot%20from%202018-03-21%2019-29-25.png)
---
![](Screenshot%20from%202018-03-21%2019-30-27.png)
---
![](Screenshot%20from%202018-03-21%2019-31-21.png)
---
![](Screenshot%20from%202018-03-21%2019-31-50.png)
---
![](Screenshot%20from%202018-03-21%2019-32-55.png)
---

<a id="billing"></a>

### Consolidated Billing
<p align="right"><a href="#top">Top</a></p>

![](Screenshot%20from%202018-03-21%2019-34-20.png)
---
![](Screenshot%20from%202018-03-21%2019-34-29.png)
---
![](Screenshot%20from%202018-03-21%2019-35-16.png)
---
![](Screenshot%20from%202018-03-21%2019-35-48.png)
---
![](Screenshot%20from%202018-03-21%2019-36-15.png)
---
![](Screenshot%20from%202018-03-21%2019-36-19.png)
---
![](Screenshot%20from%202018-03-21%2019-36-49.png)
---
![](Screenshot%20from%202018-03-21%2019-37-07.png)
---
![](Screenshot%20from%202018-03-21%2019-37-15.png)
---
![](Screenshot%20from%202018-03-21%2019-37-35.png)
---
![](Screenshot%20from%202018-03-21%2019-39-53.png)
---
![](Screenshot%20from%202018-03-21%2019-40-09.png)
---

<a id="org"></a>

### AWS Organizations Lab
<p align="right"><a href="#top">Top</a></p>

![](Screenshot%20from%202018-03-21%2019-40-32.png)
---
![](Screenshot%20from%202018-03-21%2019-40-44.png)
---
![](Screenshot%20from%202018-03-21%2019-41-34.png)
---
![](Screenshot%20from%202018-03-21%2019-41-51.png)
---

<a id="alerts"></a>

### Billing and Alerts
<p align="right"><a href="#top">Top</a></p>

![](Screenshot%20from%202018-03-21%2019-42-10.png)
---
![](Screenshot%20from%202018-03-21%2019-42-31.png)
---
![](Screenshot%20from%202018-03-21%2019-42-46.png)
---
![](Screenshot%20from%202018-03-21%2019-45-28.png)
---
![](Screenshot%20from%202018-03-21%2019-46-29.png)
---

<a id="costs"></a>

### Cost Optimization
<p align="right"><a href="#top">Top</a></p>

![](Screenshot%20from%202018-03-21%2019-48-08.png)
---
![](Screenshot%20from%202018-03-21%2019-49-39.png)
---
![](Screenshot%20from%202018-03-21%2019-49-42.png)
---
![](Screenshot%20from%202018-03-21%2019-51-26.png)
---
![](Screenshot%20from%202018-03-21%2019-52-41.png)
---
![](Screenshot%20from%202018-03-21%2019-53-39.png)
---
![](Screenshot%20from%202018-03-21%2019-54-20.png)
---
![](Screenshot%20from%202018-03-21%2019-56-25.png)
---
![](Screenshot%20from%202018-03-21%2019-56-41.png)
---
![](Screenshot%20from%202018-03-21%2019-59-28.png)
---

<a id="quiz"></a>

### Monitoring and Metrics Quiz
<p align="right"><a href="#top">Top</a></p>

![](Screenshot%20from%202018-03-21%2020-01-34.png)
---
![](Screenshot%20from%202018-03-21%2020-08-01.png)
---
![](Screenshot%20from%202018-03-21%2020-09-38.png)
---
![](Screenshot%20from%202018-03-21%2020-10-52.png)
---
![](Screenshot%20from%202018-03-21%2020-12-44.png)
---
![](Screenshot%20from%202018-03-21%2020-14-43.png)
---
![](Screenshot%20from%202018-03-21%2020-16-11.png)
---
![](Screenshot%20from%202018-03-21%2020-17-12.png)
---
![](Screenshot%20from%202018-03-21%2020-17-15.png)
---

The End

<p align="right"><a href="#top">Top</a></p>