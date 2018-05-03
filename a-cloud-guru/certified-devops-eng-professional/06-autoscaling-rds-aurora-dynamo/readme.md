<a id="top" />

# Chapter 6. High Availability and Elasticity
[Course Dashboard](https://acloud.guru/course/aws-certified-devops-engineer-professional/dashboard)

## Links
* [GitHub - ACloudGuru/resources](https://github.com/ACloudGuru/resources)
* [GitHub - newsapps/beeswithmachineguns](https://github.com/newsapps/beeswithmachineguns)
  A utility for arming (creating) many bees (micro EC2 instances) to attack (load test) targets (web applications).
* [Welcome to Paramiko! — Paramiko documentation](http://www.paramiko.org/)
* [Improving Data Access with Secondary Indexes - Amazon DynamoDB](https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/SecondaryIndexes.html)
* [Amazon Kinesis Data Analytics – Amazon Web Services (AWS)](https://aws.amazon.com/kinesis/data-analytics/)

## Content
* [Auto Scaling](#as)
* [Auto Scaling Lifecycle](#as-lifecycle)
* [Auto Scaling Lifecycle Hooks](#as-lc-hooks)
* [Launch Configuration Deep Dive](#launch)
* [Auto Scaling Group Deep Dive](#group)
* [Auto Scaling Groups Self Healing](#self-healing)
* [Exercise - ASG/LC/Healing](#lab)
* [Amazon RDS](#rds)
* [Amazon Aurora](#aurora)
* [Dynamo DB Primer](#dynamo)
* [Partitions](#partitions)
* [GSI/LSI](#gsi-lsi)
* [Streams & Replication](#streams)
* [DynamoDB Performance Deep Dive](#performance)
* [SQS](#sqs)
* [Kinesis](#kinesis)
* [High Availability and Elasticity Quiz](#quiz)


## Lectures

<a id="as"></a>

### Auto Scaling
<p align="right"><a href="#top">Top</a></p>

![](Screenshot%20from%202018-04-14%2017-45-27.png)
---
![](Screenshot%20from%202018-04-14%2017-46-19.png)
---
![](Screenshot%20from%202018-04-14%2017-46-48.png)
---
![](Screenshot%20from%202018-04-14%2017-46-54.png)
---
![](Screenshot%20from%202018-04-14%2017-48-18.png)
---
![](Screenshot%20from%202018-04-14%2017-48-55.png)
---
![](Screenshot%20from%202018-04-14%2017-49-01.png)
---
![](Screenshot%20from%202018-04-14%2017-49-25.png)
---

<a id="as-lifecycle"></a>

### Auto Scaling Lifecycle
<p align="right"><a href="#top">Top</a></p>

![](Screenshot%20from%202018-04-14%2017-50-23.png)
---
![](Screenshot%20from%202018-04-14%2017-53-50.png)
---
![](Screenshot%20from%202018-04-14%2017-53-52.png)
---
![](Screenshot%20from%202018-04-14%2017-54-43.png)
---
![](Screenshot%20from%202018-04-14%2017-54-44.png)
---
![](Screenshot%20from%202018-04-14%2017-55-07.png)
---
![](Screenshot%20from%202018-04-14%2017-55-16.png)
---
![](Screenshot%20from%202018-04-14%2017-55-24.png)
---
![](Screenshot%20from%202018-04-14%2017-55-40.png)
---
![](Screenshot%20from%202018-04-14%2017-55-44.png)
---
![](Screenshot%20from%202018-04-14%2017-55-46.png)
---
![](Screenshot%20from%202018-04-14%2017-55-50.png)
---
![](Screenshot%20from%202018-04-14%2017-56-25.png)
---
![](Screenshot%20from%202018-04-14%2017-56-28.png)
---
![](Screenshot%20from%202018-04-14%2017-56-31.png)
---
![](Screenshot%20from%202018-04-14%2017-56-36.png)
---
![](Screenshot%20from%202018-04-14%2017-56-47.png)
---
![](Screenshot%20from%202018-04-14%2017-58-16.png)
---
![](Screenshot%20from%202018-04-14%2017-58-26.png)
---
![](Screenshot%20from%202018-04-14%2017-58-28.png)
---
![](Screenshot%20from%202018-04-14%2017-58-34.png)
---

<a id="as-lc-hooks"></a>

### Auto Scaling Lifecycle Hooks
<p align="right"><a href="#top">Top</a></p>

![](Screenshot%20from%202018-04-14%2017-59-00.png)
---
![](Screenshot%20from%202018-04-14%2017-59-07.png)
---
![](Screenshot%20from%202018-04-14%2017-59-10.png)
---
![](Screenshot%20from%202018-04-14%2018-00-34.png)
---
![](Screenshot%20from%202018-04-14%2018-01-28.png)
---
![](Screenshot%20from%202018-04-14%2018-02-02.png)
---
![](Screenshot%20from%202018-04-14%2018-02-37.png)
---
![](Screenshot%20from%202018-04-14%2018-03-04.png)
---

<a id="launch"></a>

### Launch Configuration Deep Dive
<p align="right"><a href="#top">Top</a></p>

![](Screenshot%20from%202018-04-14%2018-03-19.png)
---
![](Screenshot%20from%202018-04-14%2018-25-07.png)
---
![](Screenshot%20from%202018-04-14%2018-25-39.png)
---
![](Screenshot%20from%202018-04-14%2018-26-21.png)
---
![](Screenshot%20from%202018-04-14%2018-27-37.png)
---
![](Screenshot%20from%202018-04-14%2018-28-25.png)
---

<a id="group"></a>

### Auto Scaling Group Deep Dive
<p align="right"><a href="#top">Top</a></p>

![](Screenshot%20from%202018-04-14%2018-28-44.png)
---
![](Screenshot%20from%202018-04-14%2018-29-43.png)
---
![](Screenshot%20from%202018-04-14%2018-30-17.png)
---
![](Screenshot%20from%202018-04-14%2018-31-41.png)
---
![](Screenshot%20from%202018-04-14%2018-32-08.png)
---
![](Screenshot%20from%202018-04-14%2018-32-51.png)
---

<a id="self-healing"></a>

### Auto Scaling Groups Self Healing
<p align="right"><a href="#top">Top</a></p>

![](Screenshot%20from%202018-04-14%2018-33-07.png)
---
![](Screenshot%20from%202018-04-14%2018-33-56.png)
---
![](Screenshot%20from%202018-04-14%2018-34-02.png)
---

<a id="lab"></a>

### Exercise - ASG/LC/Healing
<p align="right"><a href="#top">Top</a></p>

![](Screenshot%20from%202018-04-14%2018-36-19.png)
---
![](Screenshot%20from%202018-04-14%2018-38-03.png)
---
![](Screenshot%20from%202018-04-14%2018-38-15.png)
---
![](Screenshot%20from%202018-04-14%2018-38-19.png)
---
![](Screenshot%20from%202018-04-14%2018-38-33.png)
---
![](Screenshot%20from%202018-04-14%2018-38-45.png)
---
![](Screenshot%20from%202018-04-14%2018-38-46.png)
---
![](Screenshot%20from%202018-04-14%2018-39-10.png)
---
![](Screenshot%20from%202018-04-14%2018-39-13.png)
---
![](Screenshot%20from%202018-04-14%2018-39-17.png)
---
![](Screenshot%20from%202018-04-14%2018-39-25.png)
---
![](Screenshot%20from%202018-04-14%2018-39-42.png)
---
![](Screenshot%20from%202018-04-14%2018-40-15.png)
---
![](Screenshot%20from%202018-04-14%2018-40-24.png)
---
![](Screenshot%20from%202018-04-14%2018-40-51.png)
---
![](Screenshot%20from%202018-04-14%2018-40-57.png)
---
![](Screenshot%20from%202018-04-14%2018-41-23.png)
---
![](Screenshot%20from%202018-04-14%2018-41-29.png)
---
![](Screenshot%20from%202018-04-14%2018-41-44.png)
---
![](Screenshot%20from%202018-04-14%2018-41-57.png)
---
![](Screenshot%20from%202018-04-14%2018-42-02.png)
---
![](Screenshot%20from%202018-04-14%2018-42-50.png)
---
![](Screenshot%20from%202018-04-14%2018-42-52.png)
---
![](Screenshot%20from%202018-04-14%2018-46-06.png)
---
![](Screenshot%20from%202018-04-14%2018-46-45.png)
---
![](Screenshot%20from%202018-04-14%2018-46-53.png)
---
![](Screenshot%20from%202018-04-14%2018-47-17.png)
---
![](Screenshot%20from%202018-04-14%2018-47-50.png)
---
![](Screenshot%20from%202018-04-14%2018-47-52.png)
---
![](Screenshot%20from%202018-04-14%2018-48-25.png)
---
![](Screenshot%20from%202018-04-14%2018-48-49.png)
---
![](Screenshot%20from%202018-04-14%2018-48-52.png)
---
![](Screenshot%20from%202018-04-14%2018-48-55.png)
---
![](Screenshot%20from%202018-04-14%2018-48-58.png)
---
![](Screenshot%20from%202018-04-14%2018-49-00.png)
---
![](Screenshot%20from%202018-04-14%2018-49-22.png)
---
![](Screenshot%20from%202018-04-14%2018-49-30.png)
---
![](Screenshot%20from%202018-04-14%2018-49-37.png)
---
![](Screenshot%20from%202018-04-14%2018-50-07.png)
---
![](Screenshot%20from%202018-04-14%2018-50-41.png)
---
![](Screenshot%20from%202018-04-14%2018-51-10.png)
---
![](Screenshot%20from%202018-04-14%2018-51-15.png)
---
![](Screenshot%20from%202018-04-14%2018-51-32.png)
---
![](Screenshot%20from%202018-04-14%2018-51-44.png)
---
![](Screenshot%20from%202018-04-14%2018-52-00.png)
---
![](Screenshot%20from%202018-04-14%2018-52-27.png)
---
![](Screenshot%20from%202018-04-14%2018-52-53.png)
---
![](Screenshot%20from%202018-04-14%2018-53-15.png)
---
![](Screenshot%20from%202018-04-14%2018-53-50.png)
---
![](Screenshot%20from%202018-04-14%2018-54-36.png)
---
![](Screenshot%20from%202018-04-14%2018-54-42.png)
---
![](Screenshot%20from%202018-04-14%2018-54-51.png)
---
![](Screenshot%20from%202018-04-14%2018-55-07.png)
---
![](Screenshot%20from%202018-04-14%2018-55-32.png)
---
![](Screenshot%20from%202018-04-14%2018-55-40.png)
---
![](Screenshot%20from%202018-04-14%2018-55-50.png)
---
![](Screenshot%20from%202018-04-14%2018-55-51.png)
---

<a id="rds"></a>

### Amazon RDS
<p align="right"><a href="#top">Top</a></p>

![](Screenshot%20from%202018-04-14%2019-02-19.png)
---
![](Screenshot%20from%202018-04-14%2019-02-51.png)
---
![](Screenshot%20from%202018-04-14%2019-03-07.png)
---
![](Screenshot%20from%202018-04-14%2019-03-28.png)
---
![](Screenshot%20from%202018-04-14%2019-04-11.png)
---
![](Screenshot%20from%202018-04-14%2019-05-30.png)
---
![](Screenshot%20from%202018-04-14%2019-06-07.png)
---
![](Screenshot%20from%202018-04-14%2019-07-52.png)
---

<a id="aurora"></a>

### Amazon Aurora
<p align="right"><a href="#top">Top</a></p>

![](Screenshot%20from%202018-04-14%2019-08-38.png)
---
![](Screenshot%20from%202018-04-14%2019-09-55.png)
---
![](Screenshot%20from%202018-04-14%2019-43-49.png)
---
![](Screenshot%20from%202018-04-14%2019-44-34.png)
---
![](Screenshot%20from%202018-04-14%2019-46-34.png)
---
![](Screenshot%20from%202018-04-14%2019-47-17.png)
---

<a id="dynamo"></a>

### Dynamo DB Primer
<p align="right"><a href="#top">Top</a></p>

![](Screenshot%20from%202018-04-14%2019-47-34.png)
---
![](Screenshot%20from%202018-04-14%2019-48-22.png)
---
![](Screenshot%20from%202018-04-14%2019-51-01.png)
---
![](Screenshot%20from%202018-04-14%2019-53-56.png)
---
![](Screenshot%20from%202018-04-14%2019-54-17.png)
---

<a id="partitions"></a>

### Partitions
<p align="right"><a href="#top">Top</a></p>

![](Screenshot%20from%202018-04-15%2016-48-27.png)
---
![](Screenshot%20from%202018-04-15%2016-53-33.png)
---
![](Screenshot%20from%202018-04-15%2016-57-44.png)
---
![](Screenshot%20from%202018-04-15%2017-02-28.png)
---
![](Screenshot%20from%202018-04-15%2017-03-51.png)
---

<a id="gsi-lsi"></a>

### GSI/LSI
<p align="right"><a href="#top">Top</a></p>

![](Screenshot%20from%202018-04-15%2017-04-07.png)
---
![](Screenshot%20from%202018-04-15%2017-06-16.png)
---
![](Screenshot%20from%202018-04-15%2017-08-46.png)
---
![](Screenshot%20from%202018-04-15%2017-08-48.png)
---
![](Screenshot%20from%202018-04-15%2017-08-49.png)
---
![](Screenshot%20from%202018-04-15%2017-09-22.png)
---
![](Screenshot%20from%202018-04-15%2017-09-30.png)
---
![](Screenshot%20from%202018-04-15%2017-09-36.png)
---
![](Screenshot%20from%202018-04-15%2017-12-47.png)
---
![](Screenshot%20from%202018-04-15%2017-12-54.png)
---
![](Screenshot%20from%202018-04-15%2017-14-13.png)
---
![](Screenshot%20from%202018-04-15%2017-14-43.png)
---
![](Screenshot%20from%202018-04-15%2017-15-13.png)
---
![](Screenshot%20from%202018-04-15%2017-16-10.png)
---
![](Screenshot%20from%202018-04-15%2017-16-29.png)
---
![](Screenshot%20from%202018-04-15%2017-17-26.png)
---
![](Screenshot%20from%202018-04-15%2017-19-38.png)
---
![](Screenshot%20from%202018-04-15%2017-19-49.png)
---
![](Screenshot%20from%202018-04-15%2017-20-09.png)
---
![](Screenshot%20from%202018-04-15%2017-20-12.png)
---
![](Screenshot%20from%202018-04-15%2017-20-16.png)
---
![](Screenshot%20from%202018-04-15%2017-20-20.png)
---
![](Screenshot%20from%202018-04-15%2017-20-21.png)
---
![](Screenshot%20from%202018-04-15%2017-20-31.png)
---
![](Screenshot%20from%202018-04-15%2017-20-37.png)
---
![](Screenshot%20from%202018-04-15%2017-20-42.png)
---
![](Screenshot%20from%202018-04-15%2017-20-45.png)
---
![](Screenshot%20from%202018-04-15%2017-20-49.png)
---
![](Screenshot%20from%202018-04-15%2017-23-43.png)
---
![](Screenshot%20from%202018-04-15%2017-25-47.png)
---
![](Screenshot%20from%202018-04-15%2017-28-30.png)
---
![](Screenshot%20from%202018-04-15%2017-28-39.png)
---
![](Screenshot%20from%202018-04-15%2017-31-45.png)
---

<a id="streams"></a>

### Streams & Replication
<p align="right"><a href="#top">Top</a></p>

![](Screenshot%20from%202018-04-15%2017-37-07.png)
---
![](Screenshot%20from%202018-04-15%2017-37-38.png)
---
![](Screenshot%20from%202018-04-15%2017-38-23.png)
---
![](Screenshot%20from%202018-04-15%2017-38-27.png)
---
![](Screenshot%20from%202018-04-15%2017-38-54.png)
---
![](Screenshot%20from%202018-04-15%2017-38-58.png)
---
![](Screenshot%20from%202018-04-15%2017-39-06.png)
---
![](Screenshot%20from%202018-04-15%2017-39-13.png)
---
![](Screenshot%20from%202018-04-15%2017-40-39.png)
---
![](Screenshot%20from%202018-04-15%2017-41-33.png)
---
![](Screenshot%20from%202018-04-15%2017-43-08.png)
---

<a id="performance"></a>

### DynamoDB Performance Deep Dive
<p align="right"><a href="#top">Top</a></p>

![](Screenshot%20from%202018-04-15%2017-43-31.png)
---
![](Screenshot%20from%202018-04-15%2018-56-51.png)
---
![](Screenshot%20from%202018-04-15%2018-57-39.png)
---
![](Screenshot%20from%202018-04-15%2019-01-52.png)
---
![](Screenshot%20from%202018-04-15%2019-04-35.png)
---
![](Screenshot%20from%202018-04-15%2019-07-04.png)
---
![](Screenshot%20from%202018-04-15%2019-07-39.png)
---
![](Screenshot%20from%202018-04-15%2019-08-04.png)
---
![](Screenshot%20from%202018-04-15%2019-08-23.png)
---
![](Screenshot%20from%202018-04-15%2019-08-25.png)
---
![](Screenshot%20from%202018-04-15%2019-08-36.png)
---
![](Screenshot%20from%202018-04-15%2019-09-06.png)
---
![](Screenshot%20from%202018-04-15%2019-09-28.png)
---
![](Screenshot%20from%202018-04-15%2019-09-41.png)
---
![](Screenshot%20from%202018-04-15%2019-09-44.png)
---
![](Screenshot%20from%202018-04-15%2019-12-30.png)
---
![](Screenshot%20from%202018-04-15%2019-13-53.png)
---
![](Screenshot%20from%202018-04-15%2019-15-42.png)
---
![](Screenshot%20from%202018-04-15%2019-17-41.png)
---

<a id="sqs"></a>

### SQS
<p align="right"><a href="#top">Top</a></p>

![](Screenshot%20from%202018-04-15%2019-18-13.png)
---
![](Screenshot%20from%202018-04-15%2019-19-33.png)
---
![](Screenshot%20from%202018-04-15%2019-20-32.png)
---
![](Screenshot%20from%202018-04-15%2019-21-40.png)
---
![](Screenshot%20from%202018-04-15%2019-23-26.png)
---
![](Screenshot%20from%202018-04-15%2019-24-24.png)
---
![](Screenshot%20from%202018-04-15%2019-25-16.png)
---

<a id="kinesis"></a>

### Kinesis
<p align="right"><a href="#top">Top</a></p>

![](Screenshot%20from%202018-04-15%2019-25-30.png)
---
![](Screenshot%20from%202018-04-15%2019-26-09.png)
---
![](Screenshot%20from%202018-04-15%2019-28-03.png)
---
![](Screenshot%20from%202018-04-15%2019-30-05.png)
---
![](Screenshot%20from%202018-04-15%2019-30-38.png)
---
![](Screenshot%20from%202018-04-15%2019-32-24.png)
---
![](Screenshot%20from%202018-04-15%2019-32-51.png)
---
![](Screenshot%20from%202018-04-15%2019-34-14.png)
---
![](Screenshot%20from%202018-04-15%2019-35-27.png)
---
![](Screenshot%20from%202018-04-15%2019-35-54.png)
---

<a id="quiz"></a>

### High Availability and Elasticity Quiz
<p align="right"><a href="#top">Top</a></p>

![](Screenshot%20from%202018-04-15%2019-37-42.png)
---
![](Screenshot%20from%202018-04-15%2019-38-26.png)
---
![](Screenshot%20from%202018-04-15%2019-40-28.png)
---
![](Screenshot%20from%202018-04-15%2019-41-47.png)
---
![](Screenshot%20from%202018-04-15%2019-42-50.png)
---

The End

<p align="right"><a href="#top">Top</a></p>