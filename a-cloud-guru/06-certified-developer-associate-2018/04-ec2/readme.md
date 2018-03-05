<a id="top" />

# Chapter 4. EC2
[Course Dashboard](https://acloud.guru/course/aws-certified-developer-associate/dashboard)

## Links
* [Instance Metadata and User Data - Amazon Elastic Compute Cloud](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ec2-instance-metadata.html)
* [Storage - Amazon Elastic Compute Cloud](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/Storage.html)

## Content

* [EC2 101 - Part 1](#04-ec2-1)
* [EC2 101 - Part 2](#04-ec2-2)
* [EBS](#04-ec2-ebs)  
* [EFS](#04-ec2-efs)  
* [AWS CLI](#04-ec2-cli)  
* [S3 CLI & Regions](#04-ec2-s3-regions)  
* [CLI commands for the Developer Exam](#04-ec2-cli-dev-exam)
* [Lambda](#04-ec2-lambda)  
* [Install PHP and Composer](#04-ec2-php)
* [Using the PHP SDK to access S3](#04-ec2-sdk)
* [EC2 Instance Metadata](#04-ec2-metadata)
* [Elastic Load Balancers - Exam Tips](#04-ec2-elb)
* [SDKs Exam tips](#04-ec2-sdk-tips)
* [Summary Of EC2 Section](#04-ec2-summary)
* [EC2 Quiz](#04-ec2-quiz)

<a id="04-ec2"></a>

## Chapters 4
## EC2
<p align="right"><a href="#top">Top</a></p>

<a id="04-ec2-1"></a>

### EC2 101 - Part 1

![](Screenshot%20from%202018-02-25%2012-12-29.png)
---
![](Screenshot%20from%202018-02-25%2012-14-16.png)
---
![](Screenshot%20from%202018-02-25%2012-14-25.png)
---
![](Screenshot%20from%202018-02-25%2012-14-43.png)
---
![](Screenshot%20from%202018-02-25%2012-15-45.png)
---
![](Screenshot%20from%202018-02-25%2012-16-14.png)
---
![](Screenshot%20from%202018-02-25%2012-16-22.png)
---
![](Screenshot%20from%202018-02-25%2012-39-42.png)
---

<a id="04-ec2-2"></a>

### EC2 101 - Part 2
<p align="right"><a href="#top">Top</a></p>

![](Screenshot%20from%202018-02-25%2012-40-52.png)
---
![](Screenshot%20from%202018-02-25%2012-41-06.png)
---
![](Screenshot%20from%202018-02-25%2012-42-20.png)
---
![](Screenshot%20from%202018-02-25%2012-42-50.png)
---
![](Screenshot%20from%202018-02-25%2012-44-15.png)
---
![](Screenshot%20from%202018-02-25%2012-46-41.png)
---
![](Screenshot%20from%202018-02-25%2012-47-15.png)
---
![](Screenshot%20from%202018-02-25%2015-57-37.png)
---
![](Screenshot%20from%202018-02-25%2015-57-53.png)
---
![](Screenshot%20from%202018-02-25%2016-00-39.png)
---

<a id="04-ec2-ebs"></a>

### EBS
<p align="right"><a href="#top">Top</a></p>

![](Screenshot%20from%202018-02-25%2016-03-12.png)
---
![](Screenshot%20from%202018-02-25%2016-04-01.png)
---
![](Screenshot%20from%202018-02-25%2016-04-49.png)
---
![](Screenshot%20from%202018-02-25%2016-07-49.png)
---
![](Screenshot%20from%202018-02-25%2016-08-21.png)
---
![](Screenshot%20from%202018-02-25%2016-09-15.png)
---
![](Screenshot%20from%202018-02-25%2016-09-40.png)
---
![](Screenshot%20from%202018-02-25%2016-09-49.png)
---
![](Screenshot%20from%202018-02-25%2016-10-27.png)
---
![](Screenshot%20from%202018-02-25%2016-11-18.png)
---
![](Screenshot%20from%202018-02-26%2019-21-24.png)
---
![](Screenshot%20from%202018-02-26%2019-53-49.png)
---
![](Screenshot%20from%202018-02-26%2019-53-53.png)
---
![](Screenshot%20from%202018-02-26%2019-54-12.png)
---
![](Screenshot%20from%202018-02-26%2019-55-17.png)
---
![](Screenshot%20from%202018-02-26%2019-56-28.png)
---
![](Screenshot%20from%202018-02-26%2019-56-30.png)
---
![](Screenshot%20from%202018-02-26%2019-56-53.png)
---
![](Screenshot%20from%202018-02-26%2019-57-12.png)
---
![](Screenshot%20from%202018-02-26%2019-57-13.png)
---
![](Screenshot%20from%202018-02-26%2019-58-39.png)
---
![](Screenshot%20from%202018-02-26%2020-00-23.png)
---
![](Screenshot%20from%202018-02-26%2020-01-45.png)
---

<a id="04-ec2-efs"></a>

### EFS
<p align="right"><a href="#top">Top</a></p>

![](Screenshot%20from%202018-02-26%2020-02-06.png)
---
![](Screenshot%20from%202018-02-26%2020-02-23.png)
---
![](Screenshot%20from%202018-02-26%2020-06-16.png)
---
![](Screenshot%20from%202018-02-26%2020-06-53.png)
---
![](Screenshot%20from%202018-02-26%2020-07-47.png)
---
![](Screenshot%20from%202018-02-26%2020-08-08.png)
---
![](Screenshot%20from%202018-02-26%2020-08-44.png)
---
![](Screenshot%20from%202018-02-26%2020-10-28.png)
---
![](Screenshot%20from%202018-02-26%2020-10-57.png)
---
![](Screenshot%20from%202018-02-26%2020-11-02.png)
---
![](Screenshot%20from%202018-02-26%2020-11-28.png)
---
![](Screenshot%20from%202018-02-26%2020-12-08.png)
---
![](Screenshot%20from%202018-02-26%2020-12-23.png)
---
![](Screenshot%20from%202018-02-26%2020-14-07.png)
---
![](Screenshot%20from%202018-02-26%2020-14-12.png)
---
![](Screenshot%20from%202018-02-26%2020-14-23.png)
---
![](Screenshot%20from%202018-02-26%2020-14-29.png)
---
![](Screenshot%20from%202018-02-26%2020-14-43.png)
---
![](Screenshot%20from%202018-02-26%2020-15-11.png)
---
![](Screenshot%20from%202018-02-26%2020-15-13.png)
---
![](Screenshot%20from%202018-02-26%2020-15-23.png)
---
![](Screenshot%20from%202018-02-26%2020-15-42.png)
---
![](Screenshot%20from%202018-02-26%2020-15-46.png)
---
![](Screenshot%20from%202018-02-26%2020-15-53.png)
---
![](Screenshot%20from%202018-02-26%2020-16-30.png)
---
![](Screenshot%20from%202018-02-26%2020-16-33.png)
---
![](Screenshot%20from%202018-02-26%2020-16-40.png)
---
![](Screenshot%20from%202018-02-26%2020-17-33.png)
---
![](Screenshot%20from%202018-02-26%2020-17-42.png)
---

<a id="04-ec2-cli"></a>

### AWS CLI
<p align="right"><a href="#top">Top</a></p>

![](Screenshot%20from%202018-02-26%2020-19-58.png)
---
![](Screenshot%20from%202018-02-26%2020-22-03.png)
---
![](Screenshot%20from%202018-02-26%2020-22-24.png)
---
![](Screenshot%20from%202018-02-26%2020-22-41.png)
---
![](Screenshot%20from%202018-02-26%2020-22-55.png)
---
![](Screenshot%20from%202018-02-26%2020-23-31.png)
---
![](Screenshot%20from%202018-02-26%2020-23-43.png)
---
![](Screenshot%20from%202018-02-26%2020-23-48.png)
---
![](Screenshot%20from%202018-02-26%2020-25-33.png)
---
![](Screenshot%20from%202018-02-26%2020-26-31.png)
---

<a id="04-ec2-s3-regions"></a>

### S3 CLI & Regions
<p align="right"><a href="#top">Top</a></p>

![](Screenshot%20from%202018-02-28%2018-21-22.png)
---
![](Screenshot%20from%202018-02-28%2018-23-10.png)
---
![](Screenshot%20from%202018-02-28%2018-23-30.png)
---
![](Screenshot%20from%202018-02-28%2018-24-18.png)
---
![](Screenshot%20from%202018-02-28%2018-24-26.png)
---
![](Screenshot%20from%202018-02-28%2018-25-14.png)
---
![](Screenshot%20from%202018-02-28%2018-26-06.png)
---
![](Screenshot%20from%202018-02-28%2018-26-10.png)
---
![](Screenshot%20from%202018-02-28%2018-26-41.png)
---
![](Screenshot%20from%202018-02-28%2018-26-44.png)
---
![](Screenshot%20from%202018-02-28%2018-27-35.png)
---
![](Screenshot%20from%202018-02-28%2018-27-49.png)
---
![](Screenshot%20from%202018-02-28%2018-27-53.png)
---
![](Screenshot%20from%202018-02-28%2018-27-58.png)
---
![](Screenshot%20from%202018-02-28%2018-28-47.png)
---

<a id="04-ec2-cli-dev-exam"></a>

### CLI commands for the Developer Exam
<p align="right"><a href="#top">Top</a></p>

[CLI EC2 Available Commands](https://docs.aws.amazon.com/cli/latest/reference/ec2/index.html)
---
![](Screenshot%20from%202018-02-28%2018-29-35.png)
---
![](Screenshot%20from%202018-02-28%2018-31-01.png)
---
![](Screenshot%20from%202018-02-28%2018-31-15.png)
---
![](Screenshot%20from%202018-02-28%2018-31-19.png)
---
![](Screenshot%20from%202018-02-28%2018-32-45.png)
---
![](Screenshot%20from%202018-02-28%2018-33-26.png)
---
![](Screenshot%20from%202018-02-28%2018-34-02.png)
---
![](Screenshot%20from%202018-02-28%2018-34-55.png)
---
![](Screenshot%20from%202018-02-28%2018-40-07.png)
---
![](Screenshot%20from%202018-02-28%2018-41-27.png)
---
![](Screenshot%20from%202018-02-28%2018-42-54.png)
---
![](Screenshot%20from%202018-02-28%2018-43-45.png)
---
![](Screenshot%20from%202018-02-28%2018-44-22.png)
---
![](Screenshot%20from%202018-02-28%2018-46-45.png)
---
![](Screenshot%20from%202018-02-28%2018-47-31.png)
---

<a id="04-ec2-lambda"></a>

### Lambda
<p align="right"><a href="#top">Top</a></p>

![](Screenshot%20from%202018-02-28%2018-58-08.png)
---
![](Screenshot%20from%202018-02-28%2019-50-25.png)
---
![](Screenshot%20from%202018-02-28%2019-54-24.png)
---
![](Screenshot%20from%202018-02-28%2019-55-26.png)
---
![](Screenshot%20from%202018-02-28%2019-56-23.png)
---
![](Screenshot%20from%202018-02-28%2019-58-31.png)
---
![](Screenshot%20from%202018-02-28%2020-00-01.png)
---
![](Screenshot%20from%202018-02-28%2020-04-22.png)
---
![](Screenshot%20from%202018-02-28%2020-05-49.png)
---
![](Screenshot%20from%202018-02-28%2020-09-16.png)
---
![](Screenshot%20from%202018-02-28%2020-10-51.png)
---


<a id="04-ec2-php"></a>

### Install PHP and Composer
<p align="right"><a href="#top">Top</a></p>

![](Screenshot%20from%202018-02-28%2020-12-08.png)
---
![](Screenshot%20from%202018-03-01%2019-54-59.png)
---
![](Screenshot%20from%202018-03-01%2019-55-56.png)
---
![](Screenshot%20from%202018-03-01%2019-56-57.png)
---
![](Screenshot%20from%202018-03-01%2019-59-17.png)
---
![](Screenshot%20from%202018-03-01%2019-59-47.png)
---
![](Screenshot%20from%202018-03-01%2020-00-37.png)
---
![](Screenshot%20from%202018-03-01%2020-01-23.png)
---
![](Screenshot%20from%202018-03-01%2020-01-33.png)

<a id="04-ec2-sdk"></a>

### Using the PHP SDK to access S3
<p align="right"><a href="#top">Top</a></p>

![](Screenshot%20from%202018-03-01%2020-02-13.png)
---
![](Screenshot%20from%202018-03-01%2020-02-45.png)
---
![](Screenshot%20from%202018-03-01%2020-02-50.png)
---
![](Screenshot%20from%202018-03-01%2020-04-06.png)
---
![](Screenshot%20from%202018-03-01%2020-04-08.png)
---
![](Screenshot%20from%202018-03-01%2020-04-51.png)
---
![](Screenshot%20from%202018-03-01%2020-04-53.png)
---
![](Screenshot%20from%202018-03-01%2020-05-40.png)
---
![](Screenshot%20from%202018-03-01%2020-05-47.png)
---
![](Screenshot%20from%202018-03-01%2020-06-05.png)
---
![](Screenshot%20from%202018-03-01%2020-06-07.png)
---
![](Screenshot%20from%202018-03-01%2020-07-39.png)
---
![](Screenshot%20from%202018-03-01%2020-08-24.png)
---
![](Screenshot%20from%202018-03-01%2020-08-34.png)
---
![](Screenshot%20from%202018-03-01%2020-08-48.png)
---
![](Screenshot%20from%202018-03-01%2020-09-07.png)
---
![](Screenshot%20from%202018-03-01%2020-09-15.png)
---
![](Screenshot%20from%202018-03-01%2020-09-28.png)

<a id="04-ec2-metadata"></a>

### EC2 Instance Metadata
<p align="right"><a href="#top">Top</a></p>

![](Screenshot%20from%202018-03-01%2020-10-14.png)
---
![](Screenshot%20from%202018-03-01%2020-13-40.png)
---
![](Screenshot%20from%202018-03-01%2020-15-22.png)
---
![](Screenshot%20from%202018-03-01%2020-15-34.png)
---
![](Screenshot%20from%202018-03-01%2020-16-29.png)

<a id="04-ec2-elb"></a>

### Elastic Load Balancers - Exam Tips
<p align="right"><a href="#top">Top</a></p>

![](Screenshot%20from%202018-03-01%2020-16-46.png)
---
![](Screenshot%20from%202018-03-01%2020-20-20.png)
---
![](Screenshot%20from%202018-03-01%2020-27-05.png)
---
![](Screenshot%20from%202018-03-01%2020-29-22.png)
---
![](Screenshot%20from%202018-03-01%2020-30-31.png)
---
![](Screenshot%20from%202018-03-01%2020-32-20.png)

<a id="04-ec2-sdk-tips"></a>

### SDKs Exam tips
<p align="right"><a href="#top">Top</a></p>

![](Screenshot%20from%202018-03-01%2020-33-06.png)
---
![](Screenshot%20from%202018-03-01%2020-33-49.png)
---
![](Screenshot%20from%202018-03-01%2020-34-36.png)

<a id="04-ec2-summary"></a>

### Summary Of EC2 Section
<p align="right"><a href="#top">Top</a></p>

![](Screenshot%20from%202018-03-01%2020-37-40.png)
---
![](Screenshot%20from%202018-03-01%2020-38-12.png)
---
![](Screenshot%20from%202018-03-01%2020-40-52.png)
---
![](Screenshot%20from%202018-03-01%2020-43-15.png)
---
![](Screenshot%20from%202018-03-01%2020-44-28.png)
---
![](Screenshot%20from%202018-03-01%2020-45-15.png)
---
![](Screenshot%20from%202018-03-01%2020-46-01.png)
---
![](Screenshot%20from%202018-03-01%2020-46-18.png)
---
![](Screenshot%20from%202018-03-01%2020-47-18.png)
---
![](Screenshot%20from%202018-03-01%2020-48-26.png)
---
![](Screenshot%20from%202018-03-01%2020-48-30.png)
---
![](Screenshot%20from%202018-03-01%2020-49-28.png)
---
![](Screenshot%20from%202018-03-01%2020-50-07.png)
---
![](Screenshot%20from%202018-03-01%2020-50-32.png)
---
![](Screenshot%20from%202018-03-01%2020-51-47.png)
---
![](Screenshot%20from%202018-03-01%2020-52-12.png)
---
![](Screenshot%20from%202018-03-01%2020-52-46.png)
---
![](Screenshot%20from%202018-03-01%2020-54-12.png)

<a id="04-ec2-quiz"></a>

### EC2 Quiz
<p align="right"><a href="#top">Top</a></p>

![](Screenshot%20from%202018-03-01%2020-59-44.png)
---
![](Screenshot%20from%202018-03-01%2020-59-50.png)
---
![](Screenshot%20from%202018-03-01%2021-01-20.png)
---
![](Screenshot%20from%202018-03-01%2021-01-24.png)
---

The End

<p align="right"><a href="#top">Top</a></p>