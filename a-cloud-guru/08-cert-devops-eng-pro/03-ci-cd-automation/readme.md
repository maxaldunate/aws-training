<a id="top" />

# Chapter 3. CI/CD/Automation
[Course Dashboard](https://acloud.guru/course/aws-certified-devops-engineer-professional/dashboard)

## Links 
* [Parameters - AWS CloudFormation](https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/parameters-section-structure.html)
* [Intrinsic Function Reference - AWS CloudFormation](https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/intrinsic-function-reference.html)
* [AWS Resource Types Reference - AWS CloudFormation](https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-template-resource-type-ref.html)

## Content

* [CloudFormation Primer](#cfn-primer)
* [CloudFormation Structure](#cfn-st)
* [Intrinsic Functions & Conditionals](#cfn-fn)
* [Stack Creation & DependsOn](#cfn-stack)
* [CloudFormation Resource Deletion Policies](#cfn-deletion)
* [CloudFormation Stack Updates](#cfn-st-updates)
* [CloudFormation Nesting](#cfn-nesting)
* [CloudFormation Wait Conditions & Wait Condition Handlers](#cfn-wait)
* [CloudFormation Custom Resources](#cfn-custom)
* [OpsWorks Primer](#ops-primer)
* [OpsWorks Stacks & Layers](#ops-st)
* [OpsWorks Lifecycle Events](#ops-lifecycle)
* [OpsWorks Instances](#ops-instance)
* [OpsWorks Applications](#ops-apps)
* [OpsWorks Create Deployment Cmd](#ops-create)
* [OpsWorks Databags & berkshelf](#ops-databags)
* [OpsWorks Auto-Healing](#ops-auto)
* [EB Primer](#eb-primer)
* [Extending Beanstalk using ebextensions](#eb-ext)
* [Docker in elastic beanstalk](#eb-docker)
* [CI/CD/Automation Quiz](#quiz)
	
## Lectures

<a id="cfn-primer"></a>

### CloudFormation Primer
<p align="right"><a href="#top">Top</a></p>

![](Screenshot%20from%202018-04-11%2019-29-37.png)
---
![](Screenshot%20from%202018-04-11%2019-30-24.png)
---
![](Screenshot%20from%202018-04-11%2019-32-10.png)
---
![](Screenshot%20from%202018-04-11%2019-33-06.png)
---
![](Screenshot%20from%202018-04-11%2019-33-20.png)
---
![](Screenshot%20from%202018-04-11%2019-34-42.png)
---
![](Screenshot%20from%202018-04-11%2019-36-29.png)
---
![](Screenshot%20from%202018-04-11%2019-38-48.png)
---

<a id="cfn-st"></a>

### CloudFormation Structure
<p align="right"><a href="#top">Top</a></p>

![](Screenshot%20from%202018-04-11%2019-39-28.png)
---
![](Screenshot%20from%202018-04-11%2019-40-25.png)
---
![](Screenshot%20from%202018-04-11%2019-40-53.png)
---
![](Screenshot%20from%202018-04-11%2019-40-57.png)
---
![](Screenshot%20from%202018-04-11%2019-41-26.png)
---
![](Screenshot%20from%202018-04-11%2019-42-05.png)
---
![](Screenshot%20from%202018-04-11%2019-42-56.png)
---
![](Screenshot%20from%202018-04-11%2019-44-13.png)
---
![](Screenshot%20from%202018-04-11%2019-45-42.png)
---
![](Screenshot%20from%202018-04-11%2019-46-03.png)
---
![](Screenshot%20from%202018-04-11%2019-47-35.png)
---
![](Screenshot%20from%202018-04-11%2019-47-59.png)
---
![](Screenshot%20from%202018-04-11%2019-48-24.png)
---

<a id="cfn-fn"></a>

### Intrinsic Functions & Conditionals
<p align="right"><a href="#top">Top</a></p>

![](Screenshot%20from%202018-04-11%2019-48-35.png)
---
![](Screenshot%20from%202018-04-11%2019-49-43.png)
---
![](Screenshot%20from%202018-04-11%2019-50-09.png)
---
![](Screenshot%20from%202018-04-11%2019-50-37.png)
---
![](Screenshot%20from%202018-04-11%2019-51-26.png)
---
![](Screenshot%20from%202018-04-11%2019-51-48.png)
---
![](Screenshot%20from%202018-04-11%2019-52-44.png)
---
![](Screenshot%20from%202018-04-11%2019-53-19.png)
---
![](Screenshot%20from%202018-04-11%2019-53-59.png)
---
![](Screenshot%20from%202018-04-11%2019-55-17.png)
---
![](Screenshot%20from%202018-04-11%2019-55-59.png)
---
![](Screenshot%20from%202018-04-11%2019-57-23.png)
---
![](Screenshot%20from%202018-04-11%2019-58-44.png)
---
![](Screenshot%20from%202018-04-11%2019-59-52.png)
---
![](Screenshot%20from%202018-04-11%2020-00-29.png)
---

<a id="cfn-stack"></a>

### Stack Creation & DependsOn
<p align="right"><a href="#top">Top</a></p>

![](Screenshot%20from%202018-04-13%2007-14-19.png)
---
![](Screenshot%20from%202018-04-13%2007-16-58.png)
---
![](Screenshot%20from%202018-04-13%2007-18-43.png)
---
![](Screenshot%20from%202018-04-13%2007-19-24.png)
---

<a id="cfn-deletion"></a>

### CloudFormation Resource Deletion Policies
<p align="right"><a href="#top">Top</a></p>

![](Screenshot%20from%202018-04-13%2007-19-34.png)
---
![](Screenshot%20from%202018-04-13%2007-20-08.png)
---
![](Screenshot%20from%202018-04-13%2007-21-58.png)
---
![](Screenshot%20from%202018-04-13%2007-23-17.png)
---
![](Screenshot%20from%202018-04-13%2007-24-18.png)
---

<a id="cfn-st-updates"></a>

### CloudFormation Stack Updates
<p align="right"><a href="#top">Top</a></p>

![](Screenshot%20from%202018-04-13%2007-24-50.png)
---
![](Screenshot%20from%202018-04-13%2007-25-55.png)
---
![](Screenshot%20from%202018-04-13%2007-26-56.png)
---
![](Screenshot%20from%202018-04-13%2007-27-38.png)
---
![](Screenshot%20from%202018-04-13%2007-29-59.png)
---
![](Screenshot%20from%202018-04-13%2007-31-38.png)
---
![](Screenshot%20from%202018-04-13%2007-33-00.png)
---

<a id="cfn-nesting"></a>

### CloudFormation Nesting
<p align="right"><a href="#top">Top</a></p>

![](Screenshot%20from%202018-04-13%2007-33-37.png)
---
![](Screenshot%20from%202018-04-13%2007-35-47.png)
---
![](Screenshot%20from%202018-04-13%2007-36-59.png)
---
![](Screenshot%20from%202018-04-13%2007-37-34.png)
---

<a id="cfn-wait"></a>

### CloudFormation Wait Conditions & Wait Condition Handlers
<p align="right"><a href="#top">Top</a></p>

![](Screenshot%20from%202018-04-13%2007-37-46.png)
---
![](Screenshot%20from%202018-04-13%2007-39-36.png)
---
![](Screenshot%20from%202018-04-13%2007-40-52.png)
---
![](Screenshot%20from%202018-04-13%2007-45-50.png)
---
![](Screenshot%20from%202018-04-13%2007-47-15.png)
---
![](Screenshot%20from%202018-04-13%2007-54-57.png)
---
![](Screenshot%20from%202018-04-13%2007-56-04.png)
---

<a id="cfn-custom"></a>

### CloudFormation Custom Resources
<p align="right"><a href="#top">Top</a></p>

![](Screenshot%20from%202018-04-13%2007-57-02.png)
---
![](Screenshot%20from%202018-04-13%2008-02-02.png)
---
![](Screenshot%20from%202018-04-13%2008-03-55.png)
---
![](Screenshot%20from%202018-04-13%2008-07-14.png)
---
![](Screenshot%20from%202018-04-13%2008-08-51.png)
---
![](Screenshot%20from%202018-04-13%2008-11-13.png)
---
![](Screenshot%20from%202018-04-13%2008-12-40.png)
---
![](Screenshot%20from%202018-04-13%2008-15-35.png)
---

<a id="ops-primer"></a>

### OpsWorks Primer
<p align="right"><a href="#top">Top</a></p>

![](Screenshot%20from%202018-04-13%2008-15-54.png)
---
![](Screenshot%20from%202018-04-13%2008-22-56.png)
---
![](Screenshot%20from%202018-04-13%2008-24-51.png)
---
![](Screenshot%20from%202018-04-13%2008-25-57.png)
---
![](Screenshot%20from%202018-04-13%2008-27-43.png)
---

<a id="ops-st"></a>

### OpsWorks Stacks & Layers
<p align="right"><a href="#top">Top</a></p>

![](Screenshot%20from%202018-04-13%2008-28-15.png)
---
![](Screenshot%20from%202018-04-13%2008-28-40.png)
---
![](Screenshot%20from%202018-04-13%2008-28-46.png)
---
![](Screenshot%20from%202018-04-13%2008-29-08.png)
---
![](Screenshot%20from%202018-04-13%2008-29-27.png)
---
![](Screenshot%20from%202018-04-13%2008-30-04.png)
---
![](Screenshot%20from%202018-04-13%2008-30-30.png)
---
![](Screenshot%20from%202018-04-13%2008-31-39.png)
---
![](Screenshot%20from%202018-04-13%2008-32-25.png)
---
![](Screenshot%20from%202018-04-13%2008-33-14.png)
---
![](Screenshot%20from%202018-04-13%2008-33-22.png)
---
![](Screenshot%20from%202018-04-13%2008-33-44.png)
---
![](Screenshot%20from%202018-04-13%2008-34-00.png)
---
![](Screenshot%20from%202018-04-13%2008-34-15.png)
---
![](Screenshot%20from%202018-04-13%2008-35-25.png)
---

<a id="ops-lifecycle"></a>

### OpsWorks Lifecycle Events
<p align="right"><a href="#top">Top</a></p>

![](Screenshot%20from%202018-04-13%2008-36-07.png)
---
![](Screenshot%20from%202018-04-13%2008-36-56.png)
---
![](Screenshot%20from%202018-04-13%2008-39-19.png)
---
![](Screenshot%20from%202018-04-13%2008-40-41.png)
---
![](Screenshot%20from%202018-04-13%2008-40-50.png)
---
![](Screenshot%20from%202018-04-13%2008-41-02.png)
---
![](Screenshot%20from%202018-04-13%2008-41-33.png)
---
![](Screenshot%20from%202018-04-13%2008-42-15.png)
---
![](Screenshot%20from%202018-04-13%2008-43-25.png)
---
![](Screenshot%20from%202018-04-13%2008-43-33.png)
---
![](Screenshot%20from%202018-04-13%2008-43-42.png)
---
![](Screenshot%20from%202018-04-13%2008-44-42.png)
---

<a id="ops-instance"></a>

### OpsWorks Instances
<p align="right"><a href="#top">Top</a></p>

![](Screenshot%20from%202018-04-13%2008-44-56.png)
---
![](Screenshot%20from%202018-04-13%2008-45-49.png)
---
![](Screenshot%20from%202018-04-13%2008-46-55.png)
---
![](Screenshot%20from%202018-04-13%2008-47-44.png)
---
![](Screenshot%20from%202018-04-13%2008-49-52.png)
---
![](Screenshot%20from%202018-04-13%2008-51-00.png)
---

<a id="ops-apps"></a>

### OpsWorks Applications
<p align="right"><a href="#top">Top</a></p>

![](Screenshot%20from%202018-04-13%2008-51-10.png)
---
![](Screenshot%20from%202018-04-13%2008-51-41.png)
---
![](Screenshot%20from%202018-04-13%2008-51-43.png)
---
![](Screenshot%20from%202018-04-13%2008-52-00.png)
---
![](Screenshot%20from%202018-04-13%2008-53-33.png)
---

<a id="ops-create"></a>

### OpsWorks Create Deployment Cmd
<p align="right"><a href="#top">Top</a></p>

![](Screenshot%20from%202018-04-13%2012-26-05.png)
---
![](Screenshot%20from%202018-04-13%2012-26-31.png)
---
![](Screenshot%20from%202018-04-13%2012-28-06.png)
---
![](Screenshot%20from%202018-04-13%2012-29-36.png)
---
![](Screenshot%20from%202018-04-13%2012-33-27.png)
---

<a id="ops-databags"></a>

### OpsWorks Databags & berkshelf
<p align="right"><a href="#top">Top</a></p>

![](Screenshot%20from%202018-04-13%2012-33-52.png)
---
![](Screenshot%20from%202018-04-13%2012-35-45.png)
---
![](Screenshot%20from%202018-04-13%2012-36-56.png)
---
![](Screenshot%20from%202018-04-13%2012-37-34.png)
---
![](Screenshot%20from%202018-04-13%2012-39-43.png)
---
![](Screenshot%20from%202018-04-13%2012-40-33.png)
---

<a id="ops-auto"></a>

### OpsWorks Auto-Healing
<p align="right"><a href="#top">Top</a></p>

![](Screenshot%20from%202018-04-13%2012-40-46.png)
---
![](Screenshot%20from%202018-04-13%2012-41-20.png)
---
![](Screenshot%20from%202018-04-13%2012-42-50.png)
---
![](Screenshot%20from%202018-04-13%2012-44-11.png)
---

<a id="eb-primer"></a>

### EB Primer
<p align="right"><a href="#top">Top</a></p>

![](Screenshot%20from%202018-04-13%2012-44-32.png)
---
![](Screenshot%20from%202018-04-13%2012-45-14.png)
---
![](Screenshot%20from%202018-04-13%2012-48-14.png)
---
![](Screenshot%20from%202018-04-13%2012-49-41.png)
---
![](Screenshot%20from%202018-04-13%2012-52-15.png)
---
![](Screenshot%20from%202018-04-13%2012-52-34.png)
---
![](Screenshot%20from%202018-04-13%2012-53-41.png)
---
![](Screenshot%20from%202018-04-13%2012-53-45.png)
---
![](Screenshot%20from%202018-04-13%2012-54-12.png)
---
![](Screenshot%20from%202018-04-13%2012-54-27.png)
---
![](Screenshot%20from%202018-04-13%2012-54-31.png)
---
![](Screenshot%20from%202018-04-13%2012-54-43.png)
---
![](Screenshot%20from%202018-04-13%2012-54-58.png)
---
![](Screenshot%20from%202018-04-13%2012-55-03.png)
---
![](Screenshot%20from%202018-04-13%2012-55-07.png)
---
![](Screenshot%20from%202018-04-13%2012-55-15.png)
---
![](Screenshot%20from%202018-04-13%2012-55-27.png)
---
![](Screenshot%20from%202018-04-13%2012-56-00.png)
---
![](Screenshot%20from%202018-04-13%2012-56-13.png)
---
![](Screenshot%20from%202018-04-13%2012-56-18.png)
---
![](Screenshot%20from%202018-04-13%2012-57-10.png)
---
![](Screenshot%20from%202018-04-13%2012-57-38.png)
---
![](Screenshot%20from%202018-04-13%2012-58-14.png)
---
![](Screenshot%20from%202018-04-13%2012-58-39.png)
---
![](Screenshot%20from%202018-04-13%2012-58-40.png)
---
![](Screenshot%20from%202018-04-13%2012-58-56.png)
---
![](Screenshot%20from%202018-04-13%2012-59-25.png)
---
![](Screenshot%20from%202018-04-13%2012-59-30.png)
---
![](Screenshot%20from%202018-04-13%2013-01-02.png)
---
![](Screenshot%20from%202018-04-13%2013-01-50.png)
---

<a id="eb-ext"></a>

### Extending Beanstalk using ebextensions
<p align="right"><a href="#top">Top</a></p>

![](Screenshot%20from%202018-04-13%2013-03-21.png)
---
![](Screenshot%20from%202018-04-13%2014-54-54.png)
---
![](Screenshot%20from%202018-04-13%2014-56-19.png)
---
![](Screenshot%20from%202018-04-13%2014-58-21.png)
---
![](Screenshot%20from%202018-04-13%2014-58-58.png)
---
![](Screenshot%20from%202018-04-13%2015-00-54.png)
---

<a id="eb-docker"></a>

### Docker in elastic beanstalk
<p align="right"><a href="#top">Top</a></p>

![](Screenshot%20from%202018-04-13%2015-02-07.png)
---
![](Screenshot%20from%202018-04-13%2015-03-00.png)
---
![](Screenshot%20from%202018-04-13%2015-04-05.png)
---
![](Screenshot%20from%202018-04-13%2015-05-44.png)
---
![](Screenshot%20from%202018-04-13%2015-06-38.png)
---
![](Screenshot%20from%202018-04-13%2015-08-01.png)
---

<a id="quiz"></a>

### CI/CD/Automation Quiz
<p align="right"><a href="#top">Top</a></p>

![](Screenshot%20from%202018-04-13%2015-13-49.png)
---
![](Screenshot%20from%202018-04-13%2015-13-56.png)
---
![](Screenshot%20from%202018-04-13%2015-17-07.png)
---
![](Screenshot%20from%202018-04-13%2015-19-57.png)
---
![](Screenshot%20from%202018-04-13%2015-22-10.png)
---
![](Screenshot%20from%202018-04-13%2015-23-07.png)
---
![](Screenshot%20from%202018-04-13%2015-25-42.png)
---

The End

<p align="right"><a href="#top">Top</a></p>