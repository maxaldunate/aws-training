<a id="top" />

# Chapter 4. Automate your Deployment

[Create a Serverless Portfolio with AWS and React](https://acloud.guru/course/serverless-portfolio-with-react/dashboard)

## Links
* [CodeBuild - User Guide - Build Specification Reference for AWS CodeBuild](https://docs.aws.amazon.com/codebuild/latest/userguide/build-spec-ref.html)
* [AWS Certificate Manager - Product Description](https://aws.amazon.com/certificate-manager/)
* [Boto 3 Documentation](https://boto3.readthedocs.io/en/latest/)
* [Lambda function Code](https://media.acloud.guru/serverless-portfolio-with-react/resource/ff8c9711-1a93-90d3-a459-4c51d1ab2746_5b531e2a-b81e-1ea0-3bb3-d3b7010c837c/serverless-portfolio-with-react-8d5d4ebf-eb1c-48da-8ded-ed0ecbb565e3.py?Expires=1519142604&Signature=DhkD5MYeitvAY+VDcUV8qywmiSo7bJwIcOqudvVtlOFVP44VmkV1XvJQiavJMe7XguXivSQP4TJRcAVWGQ8JWsSSb9LJ3PMQ+ufH/XB38PqbQrjLDWIWR9ApxFXcdWIutw4XfyNnPg/Jbh97E1oPtdinK8UBehudnI5QgJp6/k/Sidr804qQ1MYl7wnwdIKqKH0D10497DYUHVfD0xJ9+fkS6VC9HZ0MC+Fq8wQZSB3TkM8fBm4yi6mBupMKAGwNy3/dxKKzOz1S+4wHSfqmpcGvByVJKuUueajexeTii8LtbnLxZY+XrMD0mwDxO3LYoRM/g/oa6iGiOgMbLQb0TA==&Key-Pair-Id=APKAISLU6JPYU7SF6EUA)
* [AWS CodePipeline Documentation](https://aws.amazon.com/documentation/codepipeline/)
* [AWS CodePipeline - User Guide - Invoke an AWS Lambda Function in a Pipeline in AWS CodePipeline](https://docs.aws.amazon.com/codepipeline/latest/userguide/actions-invoke-lambda-function.html)

## Content

* [Automate Your Deployment](#automate)
  * [Automate Your Deployment](#automate-deploy)
  * [Create a CodeBuild Build](#automate-codeBuild)
  * [AWS Client & Boto3](#automate-boto3)
  * [AWS Lambda](#automate-lambda)
  * [SNS: Simple Notification Service](#automate-sns)
  * [CodePipeline](#automate-pipe)

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

The End

<p align="right"><a href="#top">Top</a></p>