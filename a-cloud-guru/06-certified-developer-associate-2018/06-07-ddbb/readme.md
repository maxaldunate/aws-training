<a id="top" />

# Chapter 6 & 7. Databases Overview & DynamoDB
[Course Dashboard](https://acloud.guru/course/aws-certified-developer-associate/dashboard)

## Material

* [Creating A DynamoDB Table.sh](Creating%20A%20DynamoDB%20Table.sh)

## Content

* [Databases Overview](#ddbb)

* DynamoDB
  * [Introduction To DynamoDB](#intro)
  * [Creating A DynamoDB Table](#table)
  * [DynamoDB Indexes](#index)
  * [Scan vs Query API Call](#api)
  * [DynamoDB Provisioned Throughput](#throu)
  * [Using Web Identity Providers To Connect To Authenticate To DynamoDB](#web-id)
  * [Other Important Aspects Of DynamoDB](#aspects)
  * [DynamoDB Summary](#summary)
  * [DynamoDB Quiz](#quiz)

<a id="ddbb"></a>

### Chapter 6. Databases OVerview (RDS)
<p align="right"><a href="#top">Top</a></p>

![](Screenshot%20from%202018-03-04%2012-49-17.png)
---
![](Screenshot%20from%202018-03-04%2012-51-26.png)
---
![](Screenshot%20from%202018-03-04%2012-52-25.png)
---
![](Screenshot%20from%202018-03-04%2012-52-30.png)
---
![](Screenshot%20from%202018-03-04%2012-53-06.png)
---
![](Screenshot%20from%202018-03-04%2012-53-43.png)
---
![](Screenshot%20from%202018-03-04%2012-54-41.png)
---
![](Screenshot%20from%202018-03-04%2012-57-24.png)
---
![](Screenshot%20from%202018-03-04%2012-58-25.png)
---
![](Screenshot%20from%202018-03-04%2013-01-07.png)
---

<a id="intro"></a>

### Introduction To DynamoDB
<p align="right"><a href="#top">Top</a></p>

![](Screenshot%20from%202018-03-05%2018-47-56.png)
---
![](Screenshot%20from%202018-03-05%2018-48-11.png)
---
![](Screenshot%20from%202018-03-05%2018-50-22.png)
---
![](Screenshot%20from%202018-03-05%2018-52-59.png)
---
![](Screenshot%20from%202018-03-05%2018-53-16.png)
---
![](Screenshot%20from%202018-03-05%2018-56-05.png)
---
![](Screenshot%20from%202018-03-05%2018-56-06.png)
---
![](Screenshot%20from%202018-03-05%2018-56-46.png)
---
![](Screenshot%20from%202018-03-05%2018-58-42.png)
---
![](Screenshot%20from%202018-03-05%2018-59-09.png)
---
![](Screenshot%20from%202018-03-05%2018-59-22.png)
---

<a id="table"></a>

### Creating A DynamoDB Table
<p align="right"><a href="#top">Top</a></p>

![](Screenshot%20from%202018-03-05%2020-45-43.png)
---
![](Screenshot%20from%202018-03-05%2020-46-35.png)
---
![](Screenshot%20from%202018-03-05%2020-47-01.png)
---
![](Screenshot%20from%202018-03-05%2020-47-19.png)
---
![](Screenshot%20from%202018-03-05%2020-47-56.png)
---
![](Screenshot%20from%202018-03-05%2020-48-15.png)
---
![](Screenshot%20from%202018-03-05%2020-49-09.png)
---
![](Screenshot%20from%202018-03-05%2020-49-15.png)
---
![](Screenshot%20from%202018-03-05%2020-49-43.png)
---
![](Screenshot%20from%202018-03-05%2020-50-27.png)
---
![](Screenshot%20from%202018-03-05%2020-50-37.png)
---
![](Screenshot%20from%202018-03-05%2020-51-18.png)
---
![](Screenshot%20from%202018-03-05%2020-51-22.png)
---
![](Screenshot%20from%202018-03-05%2020-51-34.png)
---
![](Screenshot%20from%202018-03-05%2020-52-07.png)
---
![](Screenshot%20from%202018-03-05%2020-52-26.png)
---
![](Screenshot%20from%202018-03-05%2020-53-54.png)
---
![](Screenshot%20from%202018-03-05%2020-54-06.png)
---
![](Screenshot%20from%202018-03-05%2020-54-46.png)
---
![](Screenshot%20from%202018-03-05%2020-55-05.png)
---
![](Screenshot%20from%202018-03-05%2020-55-32.png)
---
![](Screenshot%20from%202018-03-05%2020-55-38.png)
---
![](Screenshot%20from%202018-03-05%2020-55-47.png)
---

<a id="index"></a>

### DynamoDB Indexes
<p align="right"><a href="#top">Top</a></p>

![](Screenshot%20from%202018-03-05%2020-56-41.png)
---
![](Screenshot%20from%202018-03-05%2021-00-09.png)
---
![](Screenshot%20from%202018-03-05%2021-01-25.png)
---
![](Screenshot%20from%202018-03-05%2021-02-51.png)
---
![](Screenshot%20from%202018-03-05%2021-05-51.png)
---
![](Screenshot%20from%202018-03-05%2021-07-32.png)
---
![](Screenshot%20from%202018-03-05%2021-09-17.png)
---
![](Screenshot%20from%202018-03-05%2021-10-07.png)
---
![](Screenshot%20from%202018-03-05%2021-11-37.png)
---
![](Screenshot%20from%202018-03-05%2021-12-17.png)
---
![](Screenshot%20from%202018-03-05%2021-13-27.png)
---
![](Screenshot%20from%202018-03-05%2021-14-08.png)
---
![](Screenshot%20from%202018-03-05%2021-14-50.png)
---
![](Screenshot%20from%202018-03-05%2021-14-53.png)
---
![](Screenshot%20from%202018-03-05%2021-15-34.png)
---
![](Screenshot%20from%202018-03-05%2021-16-55.png)
---
![](Screenshot%20from%202018-03-05%2021-16-58.png)
---
![](Screenshot%20from%202018-03-05%2021-18-48.png)
---






<a id="api"></a>

### Scan vs Query API Call
<p align="right"><a href="#top">Top</a></p>

<a id="throu"></a>

### DynamoDB Provisioned Throughput
<p align="right"><a href="#top">Top</a></p>

<a id="web-id"></a>

### Using Web Identity Providers To Connect To Authenticate To DynamoDB
<p align="right"><a href="#top">Top</a></p>

<a id="aspects"></a>

### Other Important Aspects Of DynamoDB
<p align="right"><a href="#top">Top</a></p>

<a id="summary"></a>

### DynamoDB Summary
<p align="right"><a href="#top">Top</a></p>

<a id="quiz"></a>

### DynamoDB Quiz
<p align="right"><a href="#top">Top</a></p>


The End

<p align="right"><a href="#top">Top</a></p>