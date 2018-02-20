<a id="top" />

# Create a Serverless Portfolio with AWS and React
[Course Dashboard](https://acloud.guru/course/serverless-portfolio-with-react/dashboard)

[CODE](code/)


## Content

* [Getting Started](#st)
  * [Getting Started](#st-started)
  * [Machine Setup: MacOS](#st-macos)
  * [Machine Setup: Windows](#st-win)
  * [Git & GitHub](#st-github)
  * [HTML & CSS Boilerplate](#st-html-css)

* [Deploy Your Portfolio to AWS](#deploy)
  * [Getting Started with AWS](#deploy-started)
  * [AWS Basics & Account Signup](#deploy-aws)
  * [Identity Access Manager](#deploy-aws)
  * [Route 53 & DNS](#deploy-aws)
  * [Deploying to S3](#deploy-s3)
  * [CloudFront & SSL](#deploy-cloudFront)

* [Automate Your Deployment](#automate)
  * [Automate Your Deployment](#automate-deploy)
  * [Create a CodeBuild Build](#automate-codeBuild)
  * [AWS Client & Boto3](#automate-boto3)
  * [AWS Lambda](#automate-lambda)
  * [SNS: Simple Notification Service](#automate-sns)
  * [CodePipeline](#automate-pipe)


### PENDING ...
* [Make Your Portfolio Dynamic](#dyn)
  * [Make Your Portfolio Dynamic with ReactJS](#dyn-ract)
  * [Babel JS](#dyn-babel)
  * [ReactJS](#dyn-reactjs)
  * [Testing with Chai & Mocha](#dyn-chai)
  * [NPM & Webpack: Organizing Your Code](#dyn-npm)
  * [First React Component](#dyn-component)
  * [Testing React](#dyn-testing)
  * [React State & Interactivity Part One](#dyn-one)
  * [React State & Interactivity Part Two](#dyn-two)
  * [Last Steps](#dyn-last)
  * [The End](#dyn-end)

* [Links](#links)

<a id="st"></a>

## Getting Started
<p align="right"><a href="#top">Top</a></p>


<a id="st-started"></a>
### Getting Started
<p align="right"><a href="#top">Top</a></p>

![](Screenshot%20from%202018-02-18%2010-17-52.png)
---
![](Screenshot%20from%202018-02-18%2011-09-28.png)
---
![](Screenshot%20from%202018-02-18%2011-10-34.png)
---
![](Screenshot%20from%202018-02-18%2011-10-36.png)
---
![](Screenshot%20from%202018-02-18%2011-11-15.png)
---
![](Screenshot%20from%202018-02-18%2011-11-18.png)
---
![](Screenshot%20from%202018-02-18%2011-11-56.png)
---
![](Screenshot%20from%202018-02-18%2011-13-54.png)
---
![](Screenshot%20from%202018-02-18%2011-14-05.png)
---
![](Screenshot%20from%202018-02-18%2011-14-20.png)
---
![](Screenshot%20from%202018-02-18%2011-15-18.png)
---

<a id="st-macos"></a>
### Machine Setup: MacOS
<p align="right"><a href="#top">Top</a></p>

1. Launch and set up terminal
2. Install [brew](https://brew.sh/).
3. Install git: `brew install git`
4. Install aws commandline: `brew install awscli`
5. Install python: `brew install python`
3. Install Atom: `brew cask install atom`
4. Install boto3: `pip install boto3`
5. Install ipython: `pip install ipython`

![](Screenshot%20from%202018-02-18%2011-17-53.png)
---
![](Screenshot%20from%202018-02-18%2011-17-54.png)
---
![](Screenshot%20from%202018-02-18%2011-20-23.png)
---
![](Screenshot%20from%202018-02-18%2011-20-30.png)
---
![](Screenshot%20from%202018-02-18%2011-20-39.png)
---
![](Screenshot%20from%202018-02-18%2011-20-44.png)
---
![](Screenshot%20from%202018-02-18%2011-20-55.png)
---
![](Screenshot%20from%202018-02-18%2011-25-11.png)
---
![](Screenshot%20from%202018-02-18%2011-25-20.png)
---
![](Screenshot%20from%202018-02-18%2011-25-54.png)
---
![](Screenshot%20from%202018-02-18%2011-26-07.png)
---
![](Screenshot%20from%202018-02-18%2011-26-22.png)
---
![](Screenshot%20from%202018-02-18%2011-26-32.png)
---
![](Screenshot%20from%202018-02-18%2011-26-56.png)
---
![](Screenshot%20from%202018-02-18%2011-27-56.png)
---
![](Screenshot%20from%202018-02-18%2011-28-22.png)
---
![](Screenshot%20from%202018-02-18%2011-28-46.png)
---
![](Screenshot%20from%202018-02-18%2011-28-58.png)
---
![](Screenshot%20from%202018-02-18%2011-29-03.png)
---
![](Screenshot%20from%202018-02-18%2011-29-22.png)
---
![](Screenshot%20from%202018-02-18%2011-29-42.png)
---

<a id="st-win"></a>
### Machine Setup: Windows
<p align="right"><a href="#top">Top</a></p>

![](Screenshot%20from%202018-02-18%2011-31-54.png)
---
![](Screenshot%20from%202018-02-18%2011-32-03.png)
---
![](Screenshot%20from%202018-02-18%2011-32-14.png)
---
![](Screenshot%20from%202018-02-18%2011-32-30.png)
---
![](Screenshot%20from%202018-02-18%2011-33-05.png)
---
![](Screenshot%20from%202018-02-18%2011-34-14.png)
---
![](Screenshot%20from%202018-02-18%2011-34-46.png)
---
![](Screenshot%20from%202018-02-18%2011-34-56.png)
---
![](Screenshot%20from%202018-02-18%2011-35-19.png)
---
![](Screenshot%20from%202018-02-18%2011-35-42.png)
---
![](Screenshot%20from%202018-02-18%2011-36-04.png)
---
![](Screenshot%20from%202018-02-18%2011-36-35.png)
---
![](Screenshot%20from%202018-02-18%2011-36-58.png)
---
![](Screenshot%20from%202018-02-18%2011-37-02.png)
---
![](Screenshot%20from%202018-02-18%2011-37-28.png)
---

<a id="st-github"></a>
### Git & GitHub
<p align="right"><a href="#top">Top</a></p>

![](Screenshot%20from%202018-02-18%2011-39-37.png)
---

<a id="st-html-css"></a>
### HTML & CSS Boilerplate
<p align="right"><a href="#top">Top</a></p>

![](Screenshot%20from%202018-02-18%2011-42-57.png)
---
![](Screenshot%20from%202018-02-18%2011-43-29.png)
---
![](Screenshot%20from%202018-02-18%2011-45-30.png)
---
![](Screenshot%20from%202018-02-18%2011-46-54.png)
---
![](Screenshot%20from%202018-02-18%2011-47-10.png)
---
![](Screenshot%20from%202018-02-18%2011-47-57.png)
---
![](Screenshot%20from%202018-02-18%2011-48-18.png)
---
![](Screenshot%20from%202018-02-18%2011-50-57.png)
---
![](Screenshot%20from%202018-02-18%2011-51-08.png)
---
![](Screenshot%20from%202018-02-18%2011-52-07.png)
---
![](Screenshot%20from%202018-02-18%2011-52-11.png)
---
![](Screenshot%20from%202018-02-18%2011-52-25.png)
---
![](Screenshot%20from%202018-02-18%2011-54-17.png)
---
![](Screenshot%20from%202018-02-18%2011-56-04.png)
---
![](Screenshot%20from%202018-02-18%2011-56-13.png)
---
![](Screenshot%20from%202018-02-18%2011-56-54.png)
---





<a id="deploy"></a>

## Deploy Your Portfolio to AWS
<p align="right"><a href="#top">Top</a></p>

<a id="deploy-started"></a>
### Getting Started with AWS
<p align="right"><a href="#top">Top</a></p>



<a id="deploy-aws"></a>
### AWS Basics & Account Signup
### Identity Access Manager
### Route 53 & DNS
<p align="right"><a href="#top">Top</a></p>

![](Screenshot%20from%202018-02-18%2012-23-48.png)
---
![](Screenshot%20from%202018-02-18%2011-57-57.png)
---
![](Screenshot%20from%202018-02-18%2011-58-02.png)
---
![](Screenshot%20from%202018-02-18%2012-20-18.png)
---
![](Screenshot%20from%202018-02-18%2012-21-25.png)
---

<a id="deploy-s3"></a>
### Deploying to S3
<p align="right"><a href="#top">Top</a></p>

![](Screenshot%20from%202018-02-18%2012-24-39.png)
---
![](Screenshot%20from%202018-02-18%2012-26-43.png)
---
![](Screenshot%20from%202018-02-18%2012-26-56.png)
---
![](Screenshot%20from%202018-02-18%2012-27-58.png)
---
![](Screenshot%20from%202018-02-18%2012-28-26.png)
---
![](Screenshot%20from%202018-02-18%2012-29-45.png)
---
![](Screenshot%20from%202018-02-18%2012-29-57.png)
---
![](Screenshot%20from%202018-02-18%2012-30-12.png)
---
![](Screenshot%20from%202018-02-18%2012-31-23.png)
---
![](Screenshot%20from%202018-02-18%2012-31-56.png)
---
![](Screenshot%20from%202018-02-18%2012-32-17.png)
---
![](Screenshot%20from%202018-02-18%2012-33-40.png)
---
![](Screenshot%20from%202018-02-18%2012-35-23.png)
---

<a id="deploy-cloudFront"></a>
### CloudFront & SSL
<p align="right"><a href="#top">Top</a></p>

![](Screenshot%20from%202018-02-18%2012-41-52.png)
---
![](Screenshot%20from%202018-02-18%2012-58-01.png)
---
![](Screenshot%20from%202018-02-18%2012-59-16.png)
---
![](Screenshot%20from%202018-02-18%2012-59-57.png)
---
![](Screenshot%20from%202018-02-18%2013-00-55.png)
---
![](Screenshot%20from%202018-02-18%2013-02-02.png)
---
![](Screenshot%20from%202018-02-18%2013-02-21.png)
---
![](Screenshot%20from%202018-02-18%2013-02-40.png)
---
![](Screenshot%20from%202018-02-18%2013-03-52.png)
---
![](Screenshot%20from%202018-02-18%2013-04-05.png)
---
![](Screenshot%20from%202018-02-18%2013-04-12.png)
---
![](Screenshot%20from%202018-02-18%2013-04-49.png)
---
![](Screenshot%20from%202018-02-18%2013-05-44.png)
---
![](Screenshot%20from%202018-02-18%2013-06-28.png)
---
![](Screenshot%20from%202018-02-18%2013-06-48.png)
---
![](Screenshot%20from%202018-02-18%2013-07-07.png)
---
![](Screenshot%20from%202018-02-18%2013-07-35.png)
---
![](Screenshot%20from%202018-02-18%2013-08-01.png)
---
![](Screenshot%20from%202018-02-18%2013-08-30.png)
---
![](Screenshot%20from%202018-02-18%2013-08-43.png)
---
![](Screenshot%20from%202018-02-18%2013-08-47.png)
---
![](Screenshot%20from%202018-02-18%2013-08-52.png)
---
![](Screenshot%20from%202018-02-18%2013-09-57.png)
---
![](Screenshot%20from%202018-02-18%2013-10-27.png)
---
![](Screenshot%20from%202018-02-18%2013-10-32.png)
---
![](Screenshot%20from%202018-02-18%2013-14-56.png)
---
![](Screenshot%20from%202018-02-18%2013-15-12.png)
---
![](Screenshot%20from%202018-02-18%2013-15-22.png)
---
![](Screenshot%20from%202018-02-18%2013-17-59.png)
---

<a id="automate"></a>
## Automate Your Deployment
<p align="right"><a href="#top">Top</a></p>

<a id="automate-deploy"></a>
### Automate Your Deployment
<p align="right"><a href="#top">Top</a></p>

![](Screenshot%20from%202018-02-18%2013-22-07.png)
---
![](Screenshot%20from%202018-02-18%2013-23-11.png)
---
![](Screenshot%20from%202018-02-18%2013-23-56.png)
---
![](Screenshot%20from%202018-02-18%2013-24-00.png)
---
![](Screenshot%20from%202018-02-18%2013-24-15.png)
---
![](Screenshot%20from%202018-02-18%2013-24-26.png)
---
![](Screenshot%20from%202018-02-18%2013-24-30.png)
---
![](Screenshot%20from%202018-02-18%2013-24-46.png)
---

<a id="automate-codeBuild"></a>
### Create a CodeBuild Build
<p align="right"><a href="#top">Top</a></p>

![](Screenshot%20from%202018-02-18%2013-25-25.png)
---
![](Screenshot%20from%202018-02-18%2013-26-41.png)
---
![](Screenshot%20from%202018-02-18%2013-27-08.png)
---
![](Screenshot%20from%202018-02-18%2013-27-24.png)
---
![](Screenshot%20from%202018-02-18%2013-27-47.png)
---
![](Screenshot%20from%202018-02-18%2013-27-58.png)
---
![](Screenshot%20from%202018-02-18%2013-28-14.png)
---
![](Screenshot%20from%202018-02-18%2013-28-21.png)
---
![](Screenshot%20from%202018-02-18%2013-28-35.png)
---
![](Screenshot%20from%202018-02-18%2013-28-59.png)
---
![](Screenshot%20from%202018-02-18%2013-29-14.png)
---
![](Screenshot%20from%202018-02-18%2013-29-24.png)
---
![](Screenshot%20from%202018-02-18%2013-29-50.png)
---
![](Screenshot%20from%202018-02-18%2013-29-57.png)
---
![](Screenshot%20from%202018-02-18%2013-30-19.png)
---
![](Screenshot%20from%202018-02-18%2013-31-42.png)
---
![](Screenshot%20from%202018-02-18%2013-32-22.png)
---
![](Screenshot%20from%202018-02-18%2013-32-46.png)
---
![](Screenshot%20from%202018-02-18%2013-33-30.png)
---
![](Screenshot%20from%202018-02-18%2013-33-45.png)
---
![](Screenshot%20from%202018-02-18%2013-33-47.png)
---
![](Screenshot%20from%202018-02-18%2013-33-59.png)
---

<a id="automate-boto3"></a>
### AWS Client & Boto3
<p align="right"><a href="#top">Top</a></p>

![](Screenshot%20from%202018-02-18%2013-35-04.png)
---
![](Screenshot%20from%202018-02-18%2017-05-11.png)
---
![](Screenshot%20from%202018-02-18%2017-06-03.png)
---
![](Screenshot%20from%202018-02-18%2017-06-33.png)
---
![](Screenshot%20from%202018-02-18%2017-06-34.png)
---
![](Screenshot%20from%202018-02-18%2017-06-37.png)
---
![](Screenshot%20from%202018-02-18%2017-06-42.png)
---
![](Screenshot%20from%202018-02-18%2017-07-21.png)
---
![](Screenshot%20from%202018-02-18%2017-08-14.png)
---
![](Screenshot%20from%202018-02-18%2017-08-35.png)
---
![](Screenshot%20from%202018-02-18%2017-10-15.png)
---
![](Screenshot%20from%202018-02-18%2017-11-49.png)
---
![](Screenshot%20from%202018-02-18%2017-12-04.png)
---
![](Screenshot%20from%202018-02-18%2017-13-49.png)
---
![](Screenshot%20from%202018-02-18%2017-14-23.png)
---
![](Screenshot%20from%202018-02-18%2017-15-17.png)
---
![](Screenshot%20from%202018-02-18%2017-15-40.png)
---
![](Screenshot%20from%202018-02-18%2017-15-45.png)
---
![](Screenshot%20from%202018-02-18%2017-17-30.png)
---
![](Screenshot%20from%202018-02-18%2017-18-07.png)
---
![](Screenshot%20from%202018-02-18%2017-19-08.png)
---
![](Screenshot%20from%202018-02-18%2017-19-30.png)
---
![](Screenshot%20from%202018-02-18%2017-20-56.png)
---
![](Screenshot%20from%202018-02-18%2017-22-05.png)
---
![](Screenshot%20from%202018-02-18%2017-22-37.png)
---
![](Screenshot%20from%202018-02-18%2017-24-11.png)
---
![](Screenshot%20from%202018-02-18%2017-25-10.png)
---
![](Screenshot%20from%202018-02-18%2017-25-32.png)
---
![](Screenshot%20from%202018-02-18%2017-26-21.png)
---
![](Screenshot%20from%202018-02-18%2017-26-55.png)
---
![](Screenshot%20from%202018-02-18%2017-26-58.png)
---
![](Screenshot%20from%202018-02-18%2017-27-32.png)
---

<a id="automate-lambda"></a>
### AWS Lambda
<p align="right"><a href="#top">Top</a></p>

![](Screenshot%20from%202018-02-18%2017-27-46.png)
---
![](Screenshot%20from%202018-02-18%2017-29-18.png)
---
![](Screenshot%20from%202018-02-18%2017-29-44.png)
---
![](Screenshot%20from%202018-02-18%2017-29-54.png)
---
![](Screenshot%20from%202018-02-18%2017-30-14.png)
---
![](Screenshot%20from%202018-02-18%2017-30-40.png)
---
![](Screenshot%20from%202018-02-18%2017-31-03.png)
---
![](Screenshot%20from%202018-02-18%2017-31-30.png)
---
![](Screenshot%20from%202018-02-18%2017-32-02.png)
---
![](Screenshot%20from%202018-02-18%2017-32-30.png)
---
![](Screenshot%20from%202018-02-18%2017-32-50.png)
---
![](Screenshot%20from%202018-02-18%2017-32-53.png)
---
![](Screenshot%20from%202018-02-18%2017-33-03.png)
---
![](Screenshot%20from%202018-02-18%2017-33-27.png)
---
![](Screenshot%20from%202018-02-18%2017-33-31.png)
---
![](Screenshot%20from%202018-02-18%2017-33-46.png)
---
![](Screenshot%20from%202018-02-18%2017-34-01.png)
---
![](Screenshot%20from%202018-02-18%2017-34-24.png)
---
![](Screenshot%20from%202018-02-18%2017-34-52.png)
---
![](Screenshot%20from%202018-02-18%2017-35-04.png)
---
![](Screenshot%20from%202018-02-18%2017-35-09.png)
---
![](Screenshot%20from%202018-02-18%2017-35-34.png)
---
![](Screenshot%20from%202018-02-18%2017-36-32.png)
---
![](Screenshot%20from%202018-02-18%2017-36-44.png)
---
![](Screenshot%20from%202018-02-18%2017-36-46.png)
---
![](Screenshot%20from%202018-02-18%2017-37-17.png)
---
![](Screenshot%20from%202018-02-18%2017-39-05.png)
---
![](Screenshot%20from%202018-02-18%2017-39-23.png)
---
![](Screenshot%20from%202018-02-18%2017-39-30.png)
---
![](Screenshot%20from%202018-02-18%2017-39-31.png)
---
![](Screenshot%20from%202018-02-18%2017-40-07.png)
---

<a id="automate-sns"></a>
### SNS: Simple Notification Service
<p align="right"><a href="#top">Top</a></p>

![](Screenshot%20from%202018-02-18%2017-41-32.png)
---
![](Screenshot%20from%202018-02-18%2017-43-32.png)
---
![](Screenshot%20from%202018-02-18%2017-44-27.png)
---
![](Screenshot%20from%202018-02-18%2017-44-30.png)
---
![](Screenshot%20from%202018-02-18%2017-44-36.png)
---
![](Screenshot%20from%202018-02-18%2017-45-11.png)
---
![](Screenshot%20from%202018-02-18%2017-45-15.png)
---
![](Screenshot%20from%202018-02-18%2017-45-20.png)
---
![](Screenshot%20from%202018-02-18%2017-45-27.png)
---
![](Screenshot%20from%202018-02-18%2017-47-22.png)
---
![](Screenshot%20from%202018-02-18%2017-48-32.png)
---
![](Screenshot%20from%202018-02-18%2017-48-49.png)
---
![](Screenshot%20from%202018-02-18%2017-49-51.png)
---
![](Screenshot%20from%202018-02-18%2017-50-12.png)
---
![](Screenshot%20from%202018-02-18%2017-51-39.png)
---
![](Screenshot%20from%202018-02-18%2017-52-03.png)
---
![](Screenshot%20from%202018-02-18%2017-52-33.png)
---
![](Screenshot%20from%202018-02-18%2017-52-43.png)
---
![](Screenshot%20from%202018-02-18%2017-53-11.png)
---
![](Screenshot%20from%202018-02-18%2017-53-42.png)
---
![](Screenshot%20from%202018-02-18%2017-53-57.png)
---
![](Screenshot%20from%202018-02-18%2017-54-43.png)
---
![](Screenshot%20from%202018-02-18%2017-55-16.png)
---
![](Screenshot%20from%202018-02-18%2017-56-32.png)
---
![](Screenshot%20from%202018-02-18%2017-56-42.png)
---
![](Screenshot%20from%202018-02-18%2017-56-45.png)
---
![](Screenshot%20from%202018-02-18%2017-56-59.png)
---

<a id="automate-pipe"></a>
### CodePipeline
<p align="right"><a href="#top">Top</a></p>

![](Screenshot%20from%202018-02-18%2017-57-37.png)
---
![](Screenshot%20from%202018-02-18%2021-05-38.png)
---
![](Screenshot%20from%202018-02-18%2021-06-10.png)
---
![](Screenshot%20from%202018-02-18%2021-06-16.png)
---
![](Screenshot%20from%202018-02-18%2021-06-32.png)
---
![](Screenshot%20from%202018-02-18%2021-06-48.png)
---
![](Screenshot%20from%202018-02-18%2021-07-05.png)
---
![](Screenshot%20from%202018-02-18%2021-07-10.png)
---
![](Screenshot%20from%202018-02-18%2021-07-23.png)
---
![](Screenshot%20from%202018-02-18%2021-07-37.png)
---
![](Screenshot%20from%202018-02-18%2021-07-40.png)
---
![](Screenshot%20from%202018-02-18%2021-07-42.png)
---
![](Screenshot%20from%202018-02-18%2021-07-45.png)
---
![](Screenshot%20from%202018-02-18%2021-08-05.png)
---
![](Screenshot%20from%202018-02-18%2021-08-11.png)
---
![](Screenshot%20from%202018-02-18%2021-08-21.png)
---
![](Screenshot%20from%202018-02-18%2021-08-32.png)
---
![](Screenshot%20from%202018-02-18%2021-08-34.png)
---
![](Screenshot%20from%202018-02-18%2021-08-54.png)
---
![](Screenshot%20from%202018-02-18%2021-09-45.png)
---
![](Screenshot%20from%202018-02-18%2021-10-08.png)
---
![](Screenshot%20from%202018-02-18%2021-10-37.png)
---
![](Screenshot%20from%202018-02-18%2021-10-40.png)
---
![](Screenshot%20from%202018-02-18%2021-11-06.png)
---
![](Screenshot%20from%202018-02-18%2021-13-48.png)
---
![](Screenshot%20from%202018-02-18%2021-14-22.png)
---
![](Screenshot%20from%202018-02-18%2021-15-23.png)
---
![](Screenshot%20from%202018-02-18%2021-15-44.png)
---
![](Screenshot%20from%202018-02-18%2021-16-37.png)
---
![](Screenshot%20from%202018-02-18%2021-16-45.png)
---
![](Screenshot%20from%202018-02-18%2021-16-53.png)
---
![](Screenshot%20from%202018-02-18%2021-17-20.png)
---
![](Screenshot%20from%202018-02-18%2021-17-36.png)
---
![](Screenshot%20from%202018-02-18%2021-17-40.png)
---
![](Screenshot%20from%202018-02-18%2021-18-18.png)
---
![](Screenshot%20from%202018-02-18%2021-18-21.png)
---
![](Screenshot%20from%202018-02-18%2021-18-24.png)
---
![](Screenshot%20from%202018-02-18%2021-18-30.png)
---
![](Screenshot%20from%202018-02-18%2021-18-33.png)
---
![](Screenshot%20from%202018-02-18%2021-19-17.png)
---
![](Screenshot%20from%202018-02-18%2021-19-27.png)
---
![](Screenshot%20from%202018-02-18%2021-20-19.png)
---
![](Screenshot%20from%202018-02-18%2021-20-45.png)
---
![](Screenshot%20from%202018-02-18%2021-20-53.png)
---
![](Screenshot%20from%202018-02-18%2021-20-59.png)
---
![](Screenshot%20from%202018-02-18%2021-21-16.png)
---







<a id="dyn"></a>

## Make Your Portfolio Dynamic
<p align="right"><a href="#top">Top</a></p>

<a id="dyn-react"></a>
### Make Your Portfolio Dynamic with ReactJS
<p align="right"><a href="#top">Top</a></p>

<a id="dyn-babel"></a>
### Babel JS
<p align="right"><a href="#top">Top</a></p>

<a id="dyn-reactjs"></a>
### ReactJS
<p align="right"><a href="#top">Top</a></p>

<a id="dyn-chai"></a>
### Testing with Chai & Mocha
<p align="right"><a href="#top">Top</a></p>

<a id="dyn-npm"></a>
### NPM & Webpack: Organizing Your Code
<p align="right"><a href="#top">Top</a></p>

<a id="dyn-component"></a>
### First React Component
<p align="right"><a href="#top">Top</a></p>

<a id="dyn-testing"></a>
### Testing React
<p align="right"><a href="#top">Top</a></p>

<a id="dyn-one"></a>
### React State & Interactivity Part One
<p align="right"><a href="#top">Top</a></p>

<a id="dyn-two"></a>
### React State & Interactivity Part Two
<p align="right"><a href="#top">Top</a></p>

<a id="dyn-last"></a>
### Last Steps
<p align="right"><a href="#top">Top</a></p>

<a id="dyn-end"></a>
### The End
<p align="right"><a href="#top">Top</a></p>





<a id="st"></a>

## Links
<p align="right"><a href="#top">Top</a></p>

[Course Intro Slides](https://media.acloud.guru/serverless-portfolio-with-react/resource/92bb4a74-7185-df66-6c0c-dd89048d8e6c_0ec51a46-97db-692d-4130-6f3bc76b5a0a/serverless-portfolio-with-react-8dab1854-5fdc-42d1-babd-54b6c899b25c.pdf?Expires=1519121173&Signature=Xqv+jUbyqtQwdnuQpYTIinyPHqkuWAd26Kb0A6KI0c5FZ8ieQQs6k+d649uxnXwdD1xG0NbZJRD4U5sZ+Z8cMIfd9UTYkZa9Odk0cTSndjPdoR/WjgMjp5UuyzHH6jxYgsWUPLnim7N6sUaa+3bs3Q3n75FygHjzTxNEKRDSPGwUlSCvKWEfLmqiVs8Uq9mTs4NKA0WInVAj67eUHZtU5MaVA3aq3/3Wqn6ZeCRtMG2tZiBhwa91pOt1KySicZJHvrpZT+8vnmW0g847oz9oT1A9bp0Gmw3T/48eWiU3U8famWtNMJ1CRpe+pmeyqrpG6FROXI0gSMq6CRRXclG8hw==&Key-Pair-Id=APKAISLU6JPYU7SF6EUA)
[Architecture Slides Section One](https://media.acloud.guru/serverless-portfolio-with-react/resource/44c60141-6448-514e-2865-b66fe3a675ba_e8679c4f-41fb-4a6b-0dfd-625097ea5108/serverless-portfolio-with-react-97ae9d6d-4658-4e87-a01f-e12936ade164.pdf?Expires=1519121911&Signature=G838QrbKdBRf42ia28xxamKc+8hsAy7b2zyyg7X44QN0V5BVUDAhgIn8+8DcVwtw5JuyM0fCIzB72TpeZr3ffi3o/xvg4hNNABNhdwCvy3TAXxK6WNRhVeZA/ehAxardoadj/vpz6l8j8OHoQ4dcujfV848S6ggSchBowXhnqiZKrj8sNBf21a0cVP0W4L8Ugo/0zTvLwIIfRl2vJMZ72i6pzxMcOWs+DnCFXqiGbByRlU4VcWt9nSiHbuUr6m25Tem7nZUTtbm4ELDFmzNqlvLZt9I9XplhdeISKcBT1sAfsvy0hyXK8V/wtxj5w5XHjN/oZg9z0ymNsdl8G1agGQ==&Key-Pair-Id=APKAISLU6JPYU7SF6EUA)
[Architecture Slides Section Four](https://media.acloud.guru/serverless-portfolio-with-react/resource/ff8c9711-1a93-90d3-a459-4c51d1ab2746_67af3b71-a713-1a82-25fe-4b54d48e9e60/serverless-portfolio-with-react-97fe8d9f-dc19-401b-b108-b20421197938.pdf?Expires=1519121911&Signature=GT3fBfq5WZwkKWVRiefhTlz4hlQgCJcinX84IM1joDmintdMfU+7kw1A4zJm6rv24x8n40dV5HbSft9mocwZK50P/x+QKcl3whYPfOsGEX4Ptp7buTN+iOCciIgAdraWeGoSYoZNjiaOiFlpTZM5oUHlmYqFxd9F5Z9ZXY/0Fu+VxW5r8oqS6EhJWKtv86UgQixMTrrLNqyfSXaVT0U29iJQs9LZxbMorzJ8pkStJ9mue676ssmlXmaKwVptUys2yusQj9awqcP9BMtanBn0j2uOxWNfgq35km+h+YIdrxcv1lKeF51ENDO1eSWR2mIoOaW4ziDJZtHa3bvXhLZ70Q==&Key-Pair-Id=APKAISLU6JPYU7SF6EUA)
[Homebrew](https://brew.sh/)
[Atom](https://atom.io/)
[Chocolatey](https://chocolatey.org/)
[CodeBuild - User Guide - Build Specification Reference for AWS CodeBuild](https://docs.aws.amazon.com/codebuild/latest/userguide/build-spec-ref.html)
[AWS Certificate Manager - Product Description](https://aws.amazon.com/certificate-manager/)
[Boto 3 Documentation](https://boto3.readthedocs.io/en/latest/)
[Lambda function Code](https://media.acloud.guru/serverless-portfolio-with-react/resource/ff8c9711-1a93-90d3-a459-4c51d1ab2746_5b531e2a-b81e-1ea0-3bb3-d3b7010c837c/serverless-portfolio-with-react-8d5d4ebf-eb1c-48da-8ded-ed0ecbb565e3.py?Expires=1519142604&Signature=DhkD5MYeitvAY+VDcUV8qywmiSo7bJwIcOqudvVtlOFVP44VmkV1XvJQiavJMe7XguXivSQP4TJRcAVWGQ8JWsSSb9LJ3PMQ+ufH/XB38PqbQrjLDWIWR9ApxFXcdWIutw4XfyNnPg/Jbh97E1oPtdinK8UBehudnI5QgJp6/k/Sidr804qQ1MYl7wnwdIKqKH0D10497DYUHVfD0xJ9+fkS6VC9HZ0MC+Fq8wQZSB3TkM8fBm4yi6mBupMKAGwNy3/dxKKzOz1S+4wHSfqmpcGvByVJKuUueajexeTii8LtbnLxZY+XrMD0mwDxO3LYoRM/g/oa6iGiOgMbLQb0TA==&Key-Pair-Id=APKAISLU6JPYU7SF6EUA)
[AWS CodePipeline Documentation](https://aws.amazon.com/documentation/codepipeline/)
[AWS CodePipeline - User Guide - Invoke an AWS Lambda Function in a Pipeline in AWS CodePipeline](https://docs.aws.amazon.com/codepipeline/latest/userguide/actions-invoke-lambda-function.html)



The End