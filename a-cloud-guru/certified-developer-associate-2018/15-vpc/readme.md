<a id="top" />

# Chapter 15. VPC
[Course Dashboard](https://acloud.guru/course/aws-certified-developer-associate/dashboard)

## Links
* [CIDR.xyz - An interactive IP Address and CIDR range visualizer](http://cidr.xyz/)
* [Index.html](https://media.acloud.guru/aws-cda/resource/ff7cc045-d8e7-4791-aa68-dfad489b6c9c_8004a209-9313-36c8-c86d-5e1d537e3582/aws-cda-d6a3a04b-5575-487f-91fa-e51cc0083047.txt?Expires=1521051612&Signature=JDOQYaV5jjAuqDQIYKZoY3RFokpfJbE8N5fMJ19UCiZt3YyA2chG5E9ceFKlOpZOQeZnLJQ+gRJikrv2XqnAOcNafb3aFqBEN4GrkO7dYoy6cQn/Lp8m/saoMMDwUAmnvie+2gEu4F9vuPWRuGFArXIr9U83SfExxJht9mT32TBwTUH0q5FpcAxXItaHiGdGH66TFBOZsBzhTeErs0xGkfcIv26vGx7m8K9i7J8O77n4E+n5rAGzsMAKqBuwbXi+8/VrBiXruIJqWM7p2QH6Nuds/1TL+zEsI50yrKfGoUqe/3Uurlu4vrHX8Na/HTTpeAzS645dy0pzPvO3GlMFrQ==&Key-Pair-Id=APKAISLU6JPYU7SF6EUA)
* [UserData - #!/bin/bash](https://media.acloud.guru/aws-cda/resource/2ecb8861-07a0-db40-e694-0cfcb79f3e6f_8004a209-9313-36c8-c86d-5e1d537e3582/aws-cda-fb1ad2da-e6b4-4a2b-a6b3-d5745d4f9e53.txt?Expires=1521051612&Signature=a46KRKSnN7jiyN36Sk64+/y8d8P8Bvz8ko8fa2aetcachgP/PBSbsAEKpdVWaLfL7hWR4F/e6L4SM7PPnHwIGbew3KEl/HIzVn17ojs8MyVSe6zwq4/SNmm4yrgVsVO1calqLPMwg2ZayE54Chl2tesAb81eYnHB8bCr+K1rVS89tyvAEyR/C80gc8gVZpyEhjRQu/CHcA6NbVv9KRSX+G/2rWL3mRyd9iBh50L0Vu5h23mLFo9S5/U+IR/Oetv2OWMKDms3x/x1PLCQ6mndzI1EhgM5FiJxiTRs7BN4Xwd6FsS/HYY02DG2G98UqDsQ1uHSlwWNdw+3Y98IhaHcjA==&Key-Pair-Id=APKAISLU6JPYU7SF6EUA)
* [vypr vpn](https://www.goldenfrog.com/vyprvpn/windows)
* [NACLs](https://docs.aws.amazon.com/AmazonVPC/latest/UserGuide/VPC_ACLs.html)

## Content

* [Introduction and Overview](#intro)
* [Building Our Own Custom VPC - Part 1](#custom)
* [Build A Custom VPC - Part 2](#part2)
* [Network Address Translation (NAT)](#nat)
* [NACLs vs Security Groups](#nacls-sg)
* [Application Load Balancers & Custom VPCs](#app-lb)
* [VPC Flow Logs](#flow-logs)
* [NAT's vs Bastions](#nat-and-bastions)
* [VPC End Points](#end-points)
* [VPC Clean Up](#clean-up)
* [VPC Summary](#summary)
* [VPC Quiz](#quiz)

## Lectures

<a id="intro"></a>

### Introduction and Overview
<p align="right"><a href="#top">Top</a></p>

![](Screenshot%20from%202018-03-12%2020-35-13.png)
---
![](Screenshot%20from%202018-03-12%2020-35-41.png)
---
![](Screenshot%20from%202018-03-12%2020-36-00.png)
---
![](Screenshot%20from%202018-03-12%2020-36-21.png)
---
![](Screenshot%20from%202018-03-12%2020-36-45.png)
---
![](Screenshot%20from%202018-03-12%2020-36-56.png)
---
![](Screenshot%20from%202018-03-12%2020-39-10.png)
---
![](Screenshot%20from%202018-03-12%2020-40-36.png)
---
![](Screenshot%20from%202018-03-12%2020-41-07.png)
---
![](Screenshot%20from%202018-03-12%2020-41-10.png)
---
![](Screenshot%20from%202018-03-12%2020-43-32.png)
---
![](Screenshot%20from%202018-03-12%2020-44-19.png)
---
![](Screenshot%20from%202018-03-12%2020-45-11.png)
---
![](Screenshot%20from%202018-03-12%2020-45-34.png)
---
![](Screenshot%20from%202018-03-12%2020-46-38.png)
---

<a id="custom"></a>

### Building Our Own Custom VPC - Part 1
<p align="right"><a href="#top">Top</a></p>

![](Screenshot%20from%202018-03-12%2020-46-46.png)
---
![](Screenshot%20from%202018-03-12%2020-47-18.png)
---
![](Screenshot%20from%202018-03-12%2020-47-33.png)
---
![](Screenshot%20from%202018-03-12%2020-48-05.png)
---
![](Screenshot%20from%202018-03-12%2020-48-22.png)
---
![](Screenshot%20from%202018-03-12%2020-48-47.png)
---
![](Screenshot%20from%202018-03-12%2020-48-54.png)
---
![](Screenshot%20from%202018-03-12%2020-49-03.png)
---
![](Screenshot%20from%202018-03-12%2020-49-06.png)
---
![](Screenshot%20from%202018-03-12%2020-49-19.png)
---
![](Screenshot%20from%202018-03-12%2020-49-27.png)
---
![](Screenshot%20from%202018-03-12%2020-49-32.png)
---
![](Screenshot%20from%202018-03-12%2020-49-39.png)
---
![](Screenshot%20from%202018-03-12%2020-50-28.png)
---
![](Screenshot%20from%202018-03-12%2020-50-37.png)
---
![](Screenshot%20from%202018-03-12%2020-50-39.png)
---
![](Screenshot%20from%202018-03-12%2020-50-44.png)
---
![](Screenshot%20from%202018-03-12%2020-50-47.png)
---
![](Screenshot%20from%202018-03-12%2020-51-02.png)
---
![](Screenshot%20from%202018-03-12%2020-51-05.png)
---
![](Screenshot%20from%202018-03-12%2020-51-14.png)
---
![](Screenshot%20from%202018-03-12%2020-51-21.png)
---
![](Screenshot%20from%202018-03-12%2020-51-25.png)
---

<a id="part2"></a>

### Build A Custom VPC - Part 2
<p align="right"><a href="#top">Top</a></p>

![](Screenshot%20from%202018-03-20%2018-31-53.png)
---
![](Screenshot%20from%202018-03-20%2018-33-06.png)
---
![](Screenshot%20from%202018-03-20%2018-33-23.png)
---
![](Screenshot%20from%202018-03-20%2018-33-46.png)
---
![](Screenshot%20from%202018-03-20%2018-33-56.png)
---
![](Screenshot%20from%202018-03-20%2018-34-57.png)
---
![](Screenshot%20from%202018-03-20%2018-35-57.png)
---
![](Screenshot%20from%202018-03-20%2018-36-19.png)
---

<a id="nat"></a>

### Network Address Translation (NAT)
<p align="right"><a href="#top">Top</a></p>

![](Screenshot%20from%202018-03-20%2018-36-43.png)
---
![](Screenshot%20from%202018-03-20%2018-37-35.png)
---
![](Screenshot%20from%202018-03-20%2018-38-02.png)
---
![](Screenshot%20from%202018-03-20%2018-38-14.png)
---
![](Screenshot%20from%202018-03-20%2018-38-54.png)
---
![](Screenshot%20from%202018-03-20%2018-39-43.png)
---
![](Screenshot%20from%202018-03-20%2018-39-47.png)
---
![](Screenshot%20from%202018-03-20%2018-40-09.png)
---
![](Screenshot%20from%202018-03-20%2018-41-10.png)
---
![](Screenshot%20from%202018-03-20%2018-41-58.png)
---
![](Screenshot%20from%202018-03-20%2018-42-12.png)
---
![](Screenshot%20from%202018-03-20%2018-42-58.png)
---
![](Screenshot%20from%202018-03-20%2018-44-04.png)
---
![](Screenshot%20from%202018-03-20%2018-44-29.png)
---
![](Screenshot%20from%202018-03-20%2018-45-46.png)
---
![](Screenshot%20from%202018-03-20%2018-47-04.png)
---
![](Screenshot%20from%202018-03-20%2018-47-52.png)
---

<a id="nacls-sg"></a>

### NACLs vs Security Groups
<p align="right"><a href="#top">Top</a></p>

![](Screenshot%20from%202018-03-20%2018-48-06.png)
---
![](Screenshot%20from%202018-03-20%2018-48-52.png)
---
![](Screenshot%20from%202018-03-20%2018-49-49.png)
---
![](Screenshot%20from%202018-03-20%2018-50-29.png)
---
![](Screenshot%20from%202018-03-20%2018-51-05.png)
---
![](Screenshot%20from%202018-03-20%2018-51-32.png)
---
![](Screenshot%20from%202018-03-20%2018-51-50.png)
---
![](Screenshot%20from%202018-03-20%2018-52-04.png)
---
![](Screenshot%20from%202018-03-20%2018-53-10.png)
---
![](Screenshot%20from%202018-03-20%2018-53-25.png)
---
![](Screenshot%20from%202018-03-20%2018-54-02.png)
---
![](Screenshot%20from%202018-03-20%2018-54-08.png)
---
![](Screenshot%20from%202018-03-20%2018-54-44.png)
---
![](Screenshot%20from%202018-03-20%2018-55-35.png)
---
![](Screenshot%20from%202018-03-20%2018-56-23.png)
---
![](Screenshot%20from%202018-03-20%2018-56-35.png)
---
![](Screenshot%20from%202018-03-20%2018-56-56.png)
---
![](Screenshot%20from%202018-03-20%2018-57-10.png)
---
![](Screenshot%20from%202018-03-20%2018-58-44.png)
---
![](Screenshot%20from%202018-03-20%2018-59-58.png)
---
![](Screenshot%20from%202018-03-20%2019-01-12.png)
---

<a id="app-lb"></a>

### Application Load Balancers & Custom VPCs
<p align="right"><a href="#top">Top</a></p>

![](Screenshot%20from%202018-03-20%2019-02-28.png)
---
![](Screenshot%20from%202018-03-20%2019-03-09.png)
---
![](Screenshot%20from%202018-03-20%2019-03-28.png)
---
![](Screenshot%20from%202018-03-20%2019-04-02.png)
---
![](Screenshot%20from%202018-03-20%2019-04-12.png)
---


<a id="flow-logs"></a>

### VPC Flow Logs
<p align="right"><a href="#top">Top</a></p>

![](Screenshot%20from%202018-03-20%2019-04-49.png)
---
![](Screenshot%20from%202018-03-20%2019-04-53.png)
---
![](Screenshot%20from%202018-03-20%2019-05-21.png)
---
![](Screenshot%20from%202018-03-20%2019-05-46.png)
---
![](Screenshot%20from%202018-03-20%2019-06-19.png)
---
![](Screenshot%20from%202018-03-20%2019-06-27.png)
---
![](Screenshot%20from%202018-03-20%2019-06-51.png)
---
![](Screenshot%20from%202018-03-20%2019-07-10.png)
---
![](Screenshot%20from%202018-03-20%2019-07-34.png)
---
![](Screenshot%20from%202018-03-20%2019-07-52.png)
---
![](Screenshot%20from%202018-03-20%2019-08-21.png)
---

<a id="nat-and-bastions"></a>

### NAT's vs Bastions
<p align="right"><a href="#top">Top</a></p>

![](Screenshot%20from%202018-03-20%2019-08-55.png)
---
![](Screenshot%20from%202018-03-20%2019-09-27.png)
---
![](Screenshot%20from%202018-03-20%2019-12-17.png)
---

<a id="end-points"></a>

### VPC End Points
<p align="right"><a href="#top">Top</a></p>

![](Screenshot%20from%202018-03-20%2019-12-32.png)
---
![](Screenshot%20from%202018-03-21%2008-21-41.png)
---
![](Screenshot%20from%202018-03-21%2008-22-56.png)
---
![](Screenshot%20from%202018-03-21%2008-23-06.png)
---
![](Screenshot%20from%202018-03-21%2008-23-13.png)
---
![](Screenshot%20from%202018-03-21%2008-23-57.png)
---
![](Screenshot%20from%202018-03-21%2008-24-02.png)
---
![](Screenshot%20from%202018-03-21%2008-24-05.png)
---
![](Screenshot%20from%202018-03-21%2008-24-26.png)
---
![](Screenshot%20from%202018-03-21%2008-25-00.png)
---
![](Screenshot%20from%202018-03-21%2008-25-54.png)
---
![](Screenshot%20from%202018-03-21%2008-26-28.png)
---
![](Screenshot%20from%202018-03-21%2008-26-30.png)
---
![](Screenshot%20from%202018-03-21%2008-26-45.png)
---
![](Screenshot%20from%202018-03-21%2008-27-05.png)
---
![](Screenshot%20from%202018-03-21%2008-28-05.png)
---
![](Screenshot%20from%202018-03-21%2008-28-25.png)
---
![](Screenshot%20from%202018-03-21%2008-28-36.png)
---
![](Screenshot%20from%202018-03-21%2008-28-50.png)
---
![](Screenshot%20from%202018-03-21%2008-29-00.png)
---
![](Screenshot%20from%202018-03-21%2008-29-09.png)
---
![](Screenshot%20from%202018-03-21%2008-29-15.png)
---

<a id="clean-up"></a>

### VPC Clean Up
<p align="right"><a href="#top">Top</a></p>

![](Screenshot%20from%202018-03-21%2008-29-34.png)
---
![](Screenshot%20from%202018-03-21%2008-30-25.png)
---
![](Screenshot%20from%202018-03-21%2008-30-49.png)
---
![](Screenshot%20from%202018-03-21%2008-31-57.png)
---

<a id="summary"></a>

### VPC Summary
<p align="right"><a href="#top">Top</a></p>

![](Screenshot%20from%202018-03-21%2008-32-30.png)
---
![](Screenshot%20from%202018-03-21%2008-32-56.png)
---
![](Screenshot%20from%202018-03-21%2008-34-05.png)
---
![](Screenshot%20from%202018-03-21%2008-35-04.png)
---
![](Screenshot%20from%202018-03-21%2008-36-19.png)
---
![](Screenshot%20from%202018-03-21%2008-36-29.png)
---
![](Screenshot%20from%202018-03-21%2008-37-03.png)
---
![](Screenshot%20from%202018-03-21%2008-37-09.png)
---
![](Screenshot%20from%202018-03-21%2008-37-35.png)
---
![](Screenshot%20from%202018-03-21%2008-38-30.png)
---
![](Screenshot%20from%202018-03-21%2008-38-43.png)
---

<a id="quiz"></a>

### VPC Quiz
<p align="right"><a href="#top">Top</a></p>

![](Screenshot%20from%202018-03-21%2008-40-03.png)
---
![](Screenshot%20from%202018-03-21%2008-40-34.png)
---


The End

<p align="right"><a href="#top">Top</a></p>