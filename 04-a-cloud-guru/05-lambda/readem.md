<a id="top" />

# AWS Lambda
[Course Dashboard](https://acloud.guru/course/aws-lambda/dashboard)


## Content

* Labs
  * [Lab 1 - CSVs](resources/lab1)
  * [Lab 2 - Kinesis](resources/lab2)
  * [Lab 3 - DynamoDB](resources/lab3)

* [Section 1 - Welcome to Lambda & Serverless](#sec1)
* [Section 2 - Console and create a function](#sec2)
* [Section 3 - Lab 1 - Aws CLI, S3 bucket, test function](#sec3)
* [Section 4 - Lab 2 - Kinesis](#sec4)
* [Section 5 - Lab 3 - DynamoDB](#sec5)
* [Section 6 - Cleanup](#sec6)

<a id="sec1"></a>

## Section 1 - Welcome to Lambda & Serverless
<p align="right"><a href="#top">Top</a></p>

![](Screenshot%20from%202018-02-20%2020-22-40.png)
---
![](Screenshot%20from%202018-02-20%2020-23-42.png)
---
![](Screenshot%20from%202018-02-20%2020-24-00.png)
---
![](Screenshot%20from%202018-02-20%2020-27-06.png)
---
![](Screenshot%20from%202018-02-21%2008-23-17.png)
---
![](Screenshot%20from%202018-02-21%2008-26-25.png)
---
![](Screenshot%20from%202018-02-21%2008-26-41.png)
---
![](Screenshot%20from%202018-02-21%2008-27-04.png)
---
![](Screenshot%20from%202018-02-21%2008-27-09.png)
---
![](Screenshot%20from%202018-02-21%2008-27-28.png)
---
![](Screenshot%20from%202018-02-21%2008-28-50.png)
---
![](Screenshot%20from%202018-02-21%2008-28-53.png)
---
![](Screenshot%20from%202018-02-21%2008-29-43.png)
---
![](Screenshot%20from%202018-02-21%2008-30-11.png)
---
![](Screenshot%20from%202018-02-21%2008-31-26.png)
---
![](Screenshot%20from%202018-02-21%2008-31-34.png)
---
![](Screenshot%20from%202018-02-21%2008-32-36.png)
---
![](Screenshot%20from%202018-02-21%2008-33-08.png)
---
![](Screenshot%20from%202018-02-21%2008-33-10.png)
---


<a id="sec2"></a>

## Section 2 - Console and create a function
<p align="right"><a href="#top">Top</a></p>

![](Screenshot%20from%202018-02-21%2008-34-00.png)
---
![](Screenshot%20from%202018-02-21%2008-40-56.png)
---
![](Screenshot%20from%202018-02-21%2008-45-02.png)
---
![](Screenshot%20from%202018-02-21%2012-23-52.png)
---
![](Screenshot%20from%202018-02-21%2012-24-15.png)
---
![](Screenshot%20from%202018-02-21%2012-24-25.png)
---
![](Screenshot%20from%202018-02-21%2012-25-18.png)
---
![](Screenshot%20from%202018-02-21%2012-26-55.png)
---
![](Screenshot%20from%202018-02-21%2012-27-58.png)
---
![](Screenshot%20from%202018-02-21%2012-28-31.png)
---
![](Screenshot%20from%202018-02-21%2012-28-44.png)
---
![](Screenshot%20from%202018-02-21%2012-29-08.png)
---
![](Screenshot%20from%202018-02-21%2012-30-03.png)
---
![](Screenshot%20from%202018-02-21%2012-30-28.png)
---
![](Screenshot%20from%202018-02-21%2012-30-42.png)
---
![](Screenshot%20from%202018-02-21%2012-31-16.png)
---


<a id="sec3"></a>

## Section 3 - Lab 1 - Aws CLI, S3 bucket, test function
<p align="right"><a href="#top">Top</a></p>

![](Screenshot%20from%202018-02-21%2012-33-03.png)
---
![](Screenshot%20from%202018-02-21%2012-33-09.png)
---
![](Screenshot%20from%202018-02-21%2012-33-49.png)
---
![](Screenshot%20from%202018-02-21%2012-34-34.png)
---
![](Screenshot%20from%202018-02-21%2012-35-16.png)
---
![](Screenshot%20from%202018-02-21%2012-38-04.png)
---
![](Screenshot%20from%202018-02-21%2012-38-47.png)
---
![](Screenshot%20from%202018-02-21%2012-39-12.png)
---
![](Screenshot%20from%202018-02-21%2012-40-19.png)
---
![](Screenshot%20from%202018-02-21%2012-40-37.png)
---
![](Screenshot%20from%202018-02-21%2012-41-00.png)
---
![](Screenshot%20from%202018-02-21%2012-41-16.png)
---
![](Screenshot%20from%202018-02-21%2012-41-22.png)
---
![](Screenshot%20from%202018-02-21%2012-42-33.png)
---
![](Screenshot%20from%202018-02-21%2012-43-11.png)
---
![](Screenshot%20from%202018-02-21%2012-43-28.png)
---
![](Screenshot%20from%202018-02-21%2012-45-22.png)
---
![](Screenshot%20from%202018-02-21%2012-46-02.png)
---
![](Screenshot%20from%202018-02-21%2012-46-33.png)
---
![](Screenshot%20from%202018-02-21%2012-47-56.png)
---
![](Screenshot%20from%202018-02-21%2012-48-04.png)
---
![](Screenshot%20from%202018-02-21%2012-48-10.png)
---
![](Screenshot%20from%202018-02-21%2012-48-39.png)
---
![](Screenshot%20from%202018-02-21%2012-49-20.png)
---
![](Screenshot%20from%202018-02-21%2012-49-57.png)
---
![](Screenshot%20from%202018-02-21%2015-15-32.png)
---
![](Screenshot%20from%202018-02-21%2015-17-44.png)
---
![](Screenshot%20from%202018-02-21%2015-17-53.png)
---
![](Screenshot%20from%202018-02-21%2015-18-03.png)
---
![](Screenshot%20from%202018-02-21%2015-18-09.png)
---
![](Screenshot%20from%202018-02-21%2015-18-16.png)
---
![](Screenshot%20from%202018-02-21%2015-18-27.png)
---
![](Screenshot%20from%202018-02-21%2015-19-12.png)
---
![](Screenshot%20from%202018-02-21%2015-19-47.png)
---
![](Screenshot%20from%202018-02-21%2015-20-16.png)
---
![](Screenshot%20from%202018-02-21%2015-20-19.png)
---
![](Screenshot%20from%202018-02-21%2015-20-32.png)
---
![](Screenshot%20from%202018-02-21%2015-22-14.png)
---
![](Screenshot%20from%202018-02-21%2015-22-16.png)
---
![](Screenshot%20from%202018-02-21%2015-23-22.png)
---
![](Screenshot%20from%202018-02-21%2015-25-04.png)
---
![](Screenshot%20from%202018-02-21%2015-26-24.png)
---
![](Screenshot%20from%202018-02-21%2015-27-46.png)
---


<a id="sec4"></a>

## Section 4 - Kinesis
<p align="right"><a href="#top">Top</a></p>

![](Screenshot%20from%202018-02-21%2015-29-06.png)
---
![](Screenshot%20from%202018-02-21%2015-29-20.png)
---
![](Screenshot%20from%202018-02-21%2015-29-33.png)
---
![](Screenshot%20from%202018-02-21%2015-30-07.png)
---
![](Screenshot%20from%202018-02-21%2015-32-10.png)
---
![](Screenshot%20from%202018-02-21%2015-32-44.png)
---
![](Screenshot%20from%202018-02-21%2015-32-52.png)
---
![](Screenshot%20from%202018-02-21%2015-33-08.png)
---
![](Screenshot%20from%202018-02-21%2015-34-08.png)
---
![](Screenshot%20from%202018-02-21%2015-34-42.png)
---
![](Screenshot%20from%202018-02-21%2015-35-03.png)
---
![](Screenshot%20from%202018-02-21%2015-35-08.png)
---
![](Screenshot%20from%202018-02-21%2015-36-59.png)
---
![](Screenshot%20from%202018-02-21%2015-37-22.png)
---
![](Screenshot%20from%202018-02-21%2015-38-44.png)
---
![](Screenshot%20from%202018-02-21%2015-39-13.png)
---
![](Screenshot%20from%202018-02-21%2015-39-26.png)
---
![](Screenshot%20from%202018-02-21%2015-40-14.png)
---
![](Screenshot%20from%202018-02-21%2015-40-20.png)
---
![](Screenshot%20from%202018-02-21%2015-40-24.png)
---
![](Screenshot%20from%202018-02-21%2015-40-58.png)
---
![](Screenshot%20from%202018-02-21%2015-41-36.png)
---
![](Screenshot%20from%202018-02-21%2015-43-02.png)
---
![](Screenshot%20from%202018-02-21%2015-43-46.png)
---


<a id="sec5"></a>

## Section 5 - DynamoDB
<p align="right"><a href="#top">Top</a></p>

![](Screenshot%20from%202018-02-21%2015-45-16.png)
---
![](Screenshot%20from%202018-02-21%2015-45-20.png)
---
![](Screenshot%20from%202018-02-21%2015-46-22.png)
---
![](Screenshot%20from%202018-02-21%2015-47-21.png)
---
![](Screenshot%20from%202018-02-21%2015-49-56.png)
---
![](Screenshot%20from%202018-02-21%2015-50-52.png)
---
![](Screenshot%20from%202018-02-21%2015-50-55.png)
---
![](Screenshot%20from%202018-02-21%2015-51-15.png)
---
![](Screenshot%20from%202018-02-21%2015-52-09.png)
---
![](Screenshot%20from%202018-02-21%2015-52-13.png)
---
![](Screenshot%20from%202018-02-21%2015-52-20.png)
---
![](Screenshot%20from%202018-02-21%2015-52-27.png)
---
![](Screenshot%20from%202018-02-21%2015-52-32.png)
---
![](Screenshot%20from%202018-02-21%2015-52-36.png)
---
![](Screenshot%20from%202018-02-21%2015-52-52.png)
---
![](Screenshot%20from%202018-02-21%2015-52-58.png)
---
![](Screenshot%20from%202018-02-21%2015-53-52.png)
---
![](Screenshot%20from%202018-02-21%2015-54-01.png)
---
![](Screenshot%20from%202018-02-21%2015-54-46.png)
---
![](Screenshot%20from%202018-02-21%2015-55-47.png)
---
![](Screenshot%20from%202018-02-21%2015-55-55.png)
---
![](Screenshot%20from%202018-02-21%2015-57-16.png)
---
![](Screenshot%20from%202018-02-21%2015-59-04.png)
---
![](Screenshot%20from%202018-02-21%2015-59-45.png)
---
![](Screenshot%20from%202018-02-21%2015-59-50.png)
---
![](Screenshot%20from%202018-02-21%2016-00-31.png)
---
![](Screenshot%20from%202018-02-21%2016-00-54.png)
---


<a id="sec6"></a>

## Section 6 - Cleanup
<p align="right"><a href="#top">Top</a></p>

![](Screenshot%20from%202018-02-21%2016-01-27.png)
---
![](Screenshot%20from%202018-02-21%2016-01-33.png)
---
![](Screenshot%20from%202018-02-21%2016-02-00.png)
---
![](Screenshot%20from%202018-02-21%2016-02-13.png)
---
![](Screenshot%20from%202018-02-21%2016-02-27.png)
---
![](Screenshot%20from%202018-02-21%2016-02-29.png)
---
![](Screenshot%20from%202018-02-21%2016-02-43.png)
---
![](Screenshot%20from%202018-02-21%2016-03-01.png)
---
![](Screenshot%20from%202018-02-21%2016-03-31.png)
---
![](Screenshot%20from%202018-02-21%2016-03-52.png)
---
![](Screenshot%20from%202018-02-21%2016-03-54.png)
---
![](Screenshot%20from%202018-02-21%2016-04-10.png)
---
![](Screenshot%20from%202018-02-21%2016-04-20.png)
---
![](Screenshot%20from%202018-02-21%2016-04-21.png)
---
![](Screenshot%20from%202018-02-21%2016-04-28.png)
---


The End