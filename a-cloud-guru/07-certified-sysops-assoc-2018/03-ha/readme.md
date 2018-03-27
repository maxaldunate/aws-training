<a id="top" />

# Chapter 3. High Availability
[Course Dashboard](https://acloud.guru/course/aws-certified-sysops-administrator-associate/dashboard)

## Links
* [Architecting for the Cloud - AWS Best Practices - February 2016](https://d0.awsstatic.com/whitepapers/AWS_Cloud_Best_Practices.pdf)
* [Previous Generation Instances](https://aws.amazon.com/ec2/previous-generation/)
* [Amazon EC2 Instance Types](https://aws.amazon.com/ec2/instance-types/)
* [Cloud Databases](https://aws.amazon.com/products/databases/)
* [Amazon RDS Read Replicas](https://aws.amazon.com/rds/details/read-replicas/)
* [Amazon Aurora – Relational Database Built for the Cloud](https://aws.amazon.com/rds/aurora/)
* [Working with Read Replicas of MariaDB, MySQL, and PostgreSQL DB Instances](https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/USER_ReadRepl.html)

## Content

* [Elasticity And Scalability 101](#intro)
* [Scale Up or Scale Out?](#scale)
* [RDS and Multi-AZ Failover](#multi-az)
* [RDS and Using Read Replicas](#read-replicas)
* [RDS Multi-AZ and Read Replicas Lab](#rds)
* [Using Bastion Hosts and High Availability](#bastions-ha)
* [Troubleshooting and Potential Autoscaling Issues](#troubleshooting-autoscaling)
* [High Availability Quiz](#quiz)

## Lectures

<a id="intro"></a>

### Elasticity And Scalability 101
<p align="right"><a href="#top">Top</a></p>

![](Screenshot%20from%202018-03-26%2019-44-50.png)
---
![](Screenshot%20from%202018-03-26%2019-46-46.png)
---
![](Screenshot%20from%202018-03-26%2019-47-48.png)
---
![](Screenshot%20from%202018-03-26%2019-49-30.png)
---
![](Screenshot%20from%202018-03-26%2019-49-51.png)
---

<a id="scale"></a>

### Scale Up or Scale Out?
<p align="right"><a href="#top">Top</a></p>

![](Screenshot%20from%202018-03-26%2019-55-49.png)
---
![](Screenshot%20from%202018-03-26%2019-55-58.png)
---
![](Screenshot%20from%202018-03-26%2019-57-21.png)
---
![](Screenshot%20from%202018-03-26%2019-57-40.png)
---
![](Screenshot%20from%202018-03-26%2019-59-55.png)
---
![](Screenshot%20from%202018-03-26%2020-00-51.png)
---
![](Screenshot%20from%202018-03-26%2020-02-46.png)
---
![](Screenshot%20from%202018-03-26%2020-03-29.png)
---
![](Screenshot%20from%202018-03-26%2020-04-38.png)
---

<a id="multi-az"></a>

### RDS and Multi-AZ Failover
<p align="right"><a href="#top">Top</a></p>

![](Screenshot%20from%202018-03-26%2020-07-47.png)
---
![](Screenshot%20from%202018-03-26%2020-07-55.png)
---
![](Screenshot%20from%202018-03-26%2020-10-20.png)
---
![](Screenshot%20from%202018-03-26%2020-11-44.png)
---

<a id="read-replicas"></a>

### RDS and Using Read Replicas
<p align="right"><a href="#top">Top</a></p>

![](Screenshot%20from%202018-03-26%2020-12-19.png)
---
![](Screenshot%20from%202018-03-26%2020-12-57.png)
---
![](Screenshot%20from%202018-03-26%2020-14-37.png)
---
![](Screenshot%20from%202018-03-26%2020-17-57.png)
---
![](Screenshot%20from%202018-03-26%2020-19-09.png)
---
![](Screenshot%20from%202018-03-26%2020-20-49.png)
---
![](Screenshot%20from%202018-03-26%2020-21-20.png)
---
![](Screenshot%20from%202018-03-26%2020-21-36.png)
---
![](Screenshot%20from%202018-03-26%2020-23-41.png)
---

<a id="rds"></a>

### RDS Multi-AZ and Read Replicas Lab
<p align="right"><a href="#top">Top</a></p>

![](Screenshot%20from%202018-03-26%2020-25-44.png)
---
![](Screenshot%20from%202018-03-26%2020-27-38.png)
---
![](Screenshot%20from%202018-03-26%2020-27-46.png)
---
![](Screenshot%20from%202018-03-26%2020-28-41.png)
---
![](Screenshot%20from%202018-03-26%2020-29-30.png)
---
![](Screenshot%20from%202018-03-26%2020-30-33.png)
---
![](Screenshot%20from%202018-03-26%2020-31-32.png)
---
![](Screenshot%20from%202018-03-26%2020-31-38.png)
---
![](Screenshot%20from%202018-03-26%2020-32-38.png)
---
![](Screenshot%20from%202018-03-26%2020-32-58.png)
---
![](Screenshot%20from%202018-03-26%2020-33-23.png)
---
![](Screenshot%20from%202018-03-26%2020-33-45.png)
---
![](Screenshot%20from%202018-03-26%2020-33-49.png)
---
![](Screenshot%20from%202018-03-26%2020-33-54.png)
---
![](Screenshot%20from%202018-03-26%2020-34-19.png)
---
![](Screenshot%20from%202018-03-26%2020-34-31.png)
---
![](Screenshot%20from%202018-03-26%2020-35-10.png)
---
![](Screenshot%20from%202018-03-26%2020-35-29.png)
---
![](Screenshot%20from%202018-03-26%2020-36-06.png)
---
![](Screenshot%20from%202018-03-26%2020-36-17.png)
---
![](Screenshot%20from%202018-03-26%2020-36-33.png)
---
![](Screenshot%20from%202018-03-26%2020-36-48.png)
---
![](Screenshot%20from%202018-03-26%2020-36-52.png)
---
![](Screenshot%20from%202018-03-26%2020-36-58.png)
---
![](Screenshot%20from%202018-03-26%2020-37-38.png)
---
![](Screenshot%20from%202018-03-26%2020-38-13.png)
---
![](Screenshot%20from%202018-03-26%2020-38-30.png)
---
![](Screenshot%20from%202018-03-26%2020-38-52.png)
---
![](Screenshot%20from%202018-03-26%2020-39-39.png)
---
![](Screenshot%20from%202018-03-26%2020-39-42.png)
---
![](Screenshot%20from%202018-03-26%2020-40-10.png)
---
![](Screenshot%20from%202018-03-26%2020-40-34.png)
---
![](Screenshot%20from%202018-03-26%2020-40-47.png)
---
![](Screenshot%20from%202018-03-26%2020-41-06.png)
---
![](Screenshot%20from%202018-03-26%2020-41-13.png)
---
![](Screenshot%20from%202018-03-26%2020-41-24.png)
---
![](Screenshot%20from%202018-03-26%2020-41-45.png)
---
![](Screenshot%20from%202018-03-26%2020-41-51.png)
---
![](Screenshot%20from%202018-03-26%2020-41-57.png)
---
![](Screenshot%20from%202018-03-26%2020-42-00.png)
---
![](Screenshot%20from%202018-03-26%2020-42-03.png)
---
![](Screenshot%20from%202018-03-26%2020-42-07.png)
---
![](Screenshot%20from%202018-03-26%2020-42-15.png)
---
![](Screenshot%20from%202018-03-26%2020-42-21.png)
---
![](Screenshot%20from%202018-03-26%2020-42-37.png)
---
![](Screenshot%20from%202018-03-26%2020-42-54.png)
---
![](Screenshot%20from%202018-03-26%2020-43-24.png)
---
![](Screenshot%20from%202018-03-26%2020-43-59.png)
---
![](Screenshot%20from%202018-03-26%2020-44-01.png)
---
![](Screenshot%20from%202018-03-26%2020-44-28.png)
---
![](Screenshot%20from%202018-03-26%2020-44-49.png)
---
![](Screenshot%20from%202018-03-26%2020-44-54.png)
---
![](Screenshot%20from%202018-03-26%2020-45-38.png)
---
![](Screenshot%20from%202018-03-26%2020-47-01.png)
---

<a id="bastions-ha"></a>

### Using Bastion Hosts and High Availability
<p align="right"><a href="#top">Top</a></p>

![](Screenshot%20from%202018-03-26%2020-47-47.png)
---
![](Screenshot%20from%202018-03-26%2020-47-52.png)
---
![](Screenshot%20from%202018-03-26%2020-48-15.png)
---

<a id="troubleshooting-autoscaling"></a>

### Troubleshooting and Potential Autoscaling Issues
<p align="right"><a href="#top">Top</a></p>

![](Screenshot%20from%202018-03-26%2020-51-27.png)
---
![](Screenshot%20from%202018-03-26%2020-51-50.png)
---

<a id="quiz"></a>

### High Availability Quiz
<p align="right"><a href="#top">Top</a></p>

![](xScreenshot42.png)
---
![](xScreenshot43.png)
---
![](xScreenshot44.png)
---
![](xScreenshot45.png)
---
![](xScreenshot46.png)
---
![](xScreenshot47.png)
---
![](xScreenshot48.png)
---
![](xScreenshot49.png)
---


The End

<p align="right"><a href="#top">Top</a></p>