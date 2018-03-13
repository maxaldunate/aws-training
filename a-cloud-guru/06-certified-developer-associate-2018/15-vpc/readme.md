<a id="top" />

# Chapter 15. VPC
[Course Dashboard](https://acloud.guru/course/aws-certified-developer-associate/dashboard)

## Links
* [CIDR.xyz - An interactive IP Address and CIDR range visualizer](http://cidr.xyz/)
* [Index.html](https://media.acloud.guru/aws-cda/resource/ff7cc045-d8e7-4791-aa68-dfad489b6c9c_8004a209-9313-36c8-c86d-5e1d537e3582/aws-cda-d6a3a04b-5575-487f-91fa-e51cc0083047.txt?Expires=1521051612&Signature=JDOQYaV5jjAuqDQIYKZoY3RFokpfJbE8N5fMJ19UCiZt3YyA2chG5E9ceFKlOpZOQeZnLJQ+gRJikrv2XqnAOcNafb3aFqBEN4GrkO7dYoy6cQn/Lp8m/saoMMDwUAmnvie+2gEu4F9vuPWRuGFArXIr9U83SfExxJht9mT32TBwTUH0q5FpcAxXItaHiGdGH66TFBOZsBzhTeErs0xGkfcIv26vGx7m8K9i7J8O77n4E+n5rAGzsMAKqBuwbXi+8/VrBiXruIJqWM7p2QH6Nuds/1TL+zEsI50yrKfGoUqe/3Uurlu4vrHX8Na/HTTpeAzS645dy0pzPvO3GlMFrQ==&Key-Pair-Id=APKAISLU6JPYU7SF6EUA)
* [UserData - #!/bin/bash](https://media.acloud.guru/aws-cda/resource/2ecb8861-07a0-db40-e694-0cfcb79f3e6f_8004a209-9313-36c8-c86d-5e1d537e3582/aws-cda-fb1ad2da-e6b4-4a2b-a6b3-d5745d4f9e53.txt?Expires=1521051612&Signature=a46KRKSnN7jiyN36Sk64+/y8d8P8Bvz8ko8fa2aetcachgP/PBSbsAEKpdVWaLfL7hWR4F/e6L4SM7PPnHwIGbew3KEl/HIzVn17ojs8MyVSe6zwq4/SNmm4yrgVsVO1calqLPMwg2ZayE54Chl2tesAb81eYnHB8bCr+K1rVS89tyvAEyR/C80gc8gVZpyEhjRQu/CHcA6NbVv9KRSX+G/2rWL3mRyd9iBh50L0Vu5h23mLFo9S5/U+IR/Oetv2OWMKDms3x/x1PLCQ6mndzI1EhgM5FiJxiTRs7BN4Xwd6FsS/HYY02DG2G98UqDsQ1uHSlwWNdw+3Y98IhaHcjA==&Key-Pair-Id=APKAISLU6JPYU7SF6EUA)
* [vypr vpn](https://www.goldenfrog.com/vyprvpn/windows)

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





<a id="nat"></a>

### Network Address Translation (NAT)
<p align="right"><a href="#top">Top</a></p>




<a id="nacls-sg"></a>

### NACLs vs Security Groups
<p align="right"><a href="#top">Top</a></p>




<a id="app-lb"></a>

### Application Load Balancers & Custom VPCs
<p align="right"><a href="#top">Top</a></p>




<a id="flow-logs"></a>

### VPC Flow Logs
<p align="right"><a href="#top">Top</a></p>




<a id="nat-and-bastions"></a>

### NAT's vs Bastions
<p align="right"><a href="#top">Top</a></p>




<a id="end-points"></a>

### VPC End Points
<p align="right"><a href="#top">Top</a></p>




<a id="clean-up"></a>

### VPC Clean Up
<p align="right"><a href="#top">Top</a></p>




<a id="summary"></a>

### VPC Summary
<p align="right"><a href="#top">Top</a></p>





<a id="quiz"></a>

### VPC Quiz
<p align="right"><a href="#top">Top</a></p>






The End

<p align="right"><a href="#top">Top</a></p>