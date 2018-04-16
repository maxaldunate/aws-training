<a id="top" />

# Chapter 4. Monitoring/Metrics/Logging
[Course Dashboard](https://acloud.guru/course/aws-certified-devops-engineer-professional/dashboard)

## Links
* [Exporting Log Data to Amazon S3 - Amazon CloudWatch Logs](https://docs.aws.amazon.com/AmazonCloudWatch/latest/logs/S3Export.html)
* [Amazon CloudWatch Documentation](https://aws.amazon.com/documentation/cloudwatch/)
* [GitHub](https://github.com/amazon-archives/cloudwatch-logs-subscription-consumer)
   amazon-archives/cloudwatch-logs-subscription-consumer: A specialized Amazon Kinesis stream reader (based on the Amazon Kinesis Connector Library) that can help you deliver data from Amazon CloudWatch Logs to any other system in near real-time usi
* [Real-time Processing of Log Data with Subscriptions - Amazon CloudWatch Logs](https://docs.aws.amazon.com/AmazonCloudWatch/latest/logs/Subscriptions.html)

## Content

* [CloudWatch Basics](#basics)
* [CloudWatch Custom Metrics](#custom)
* [CloudWatch Alarms](#alarms)
* [CloudWatch Logs](#logs)
* [CloudWatch Log Filters](#filters)
* [Real-Time Log Processing](#real-time)
* [CloudTrail](#cloud-trail)
* [CloudWatch Events](#events)
* [Monitoring/Metrics/Logging Quiz](#quiz)

## Lectures

<a id="basics"></a>

### CloudWatch Basics
<p align="right"><a href="#top">Top</a></p>

![](Screenshot%20from%202018-04-13%2015-41-52.png)
---
![](Screenshot%20from%202018-04-13%2015-42-45.png)
---
![](Screenshot%20from%202018-04-13%2015-43-45.png)
---
![](Screenshot%20from%202018-04-13%2015-43-48.png)
---
![](Screenshot%20from%202018-04-13%2015-44-10.png)
---
![](Screenshot%20from%202018-04-13%2015-44-21.png)
---
![](Screenshot%20from%202018-04-13%2015-45-09.png)
---
![](Screenshot%20from%202018-04-13%2015-46-58.png)
---
![](Screenshot%20from%202018-04-13%2015-47-03.png)
---
![](Screenshot%20from%202018-04-13%2015-47-08.png)
---
![](Screenshot%20from%202018-04-13%2015-47-21.png)
---
![](Screenshot%20from%202018-04-13%2015-47-45.png)
---
![](Screenshot%20from%202018-04-13%2015-47-49.png)
---
![](Screenshot%20from%202018-04-13%2015-48-14.png)
---
![](Screenshot%20from%202018-04-13%2015-50-03.png)
---
![](Screenshot%20from%202018-04-13%2015-50-33.png)
---

<a id="custom"></a>

### CloudWatch Custom Metrics
<p align="right"><a href="#top">Top</a></p>

![](Screenshot%20from%202018-04-13%2015-58-21.png)
---
![](Screenshot%20from%202018-04-13%2016-00-00.png)
---
![](Screenshot%20from%202018-04-13%2016-00-14.png)
---
![](Screenshot%20from%202018-04-13%2016-00-22.png)
---
![](Screenshot%20from%202018-04-13%2016-02-18.png)
---
![](Screenshot%20from%202018-04-13%2016-02-52.png)
---
![](Screenshot%20from%202018-04-13%2016-03-16.png)
---
![](Screenshot%20from%202018-04-13%2016-04-03.png)
---
![](Screenshot%20from%202018-04-13%2016-04-27.png)
---
![](Screenshot%20from%202018-04-13%2016-04-57.png)
---
![](Screenshot%20from%202018-04-13%2016-05-29.png)
---
![](Screenshot%20from%202018-04-13%2016-06-05.png)
---
![](Screenshot%20from%202018-04-13%2016-06-24.png)
---
![](Screenshot%20from%202018-04-13%2016-07-03.png)
---
![](Screenshot%20from%202018-04-13%2016-07-25.png)
---
![](Screenshot%20from%202018-04-13%2016-07-29.png)
---
![](Screenshot%20from%202018-04-13%2016-07-32.png)
---
![](Screenshot%20from%202018-04-13%2016-07-36.png)
---
![](Screenshot%20from%202018-04-13%2016-07-41.png)
---
![](Screenshot%20from%202018-04-13%2016-08-13.png)
---
![](Screenshot%20from%202018-04-13%2016-08-51.png)
---

<a id="alarms"></a>

### CloudWatch Alarms
<p align="right"><a href="#top">Top</a></p>

![](Screenshot%20from%202018-04-13%2016-09-17.png)
---
![](Screenshot%20from%202018-04-13%2016-09-37.png)
---
![](Screenshot%20from%202018-04-13%2016-09-58.png)
---
![](Screenshot%20from%202018-04-13%2016-10-43.png)
---
![](Screenshot%20from%202018-04-13%2016-11-39.png)
---
![](Screenshot%20from%202018-04-13%2016-12-10.png)
---
![](Screenshot%20from%202018-04-13%2016-12-39.png)
---
![](Screenshot%20from%202018-04-13%2016-12-57.png)
---
![](Screenshot%20from%202018-04-13%2016-13-13.png)
---
![](Screenshot%20from%202018-04-13%2016-13-32.png)
---
![](Screenshot%20from%202018-04-13%2016-14-12.png)
---
![](Screenshot%20from%202018-04-13%2016-14-35.png)
---
![](Screenshot%20from%202018-04-13%2016-14-51.png)
---
![](Screenshot%20from%202018-04-13%2016-15-29.png)
---
![](Screenshot%20from%202018-04-13%2016-16-29.png)
---
![](Screenshot%20from%202018-04-13%2016-16-40.png)
---
![](Screenshot%20from%202018-04-13%2016-16-46.png)
---
![](Screenshot%20from%202018-04-13%2016-16-48.png)
---
![](Screenshot%20from%202018-04-13%2016-16-49.png)
---
![](Screenshot%20from%202018-04-13%2016-17-19.png)
---
![](Screenshot%20from%202018-04-13%2016-18-00.png)
---
![](Screenshot%20from%202018-04-13%2016-18-09.png)
---
![](Screenshot%20from%202018-04-13%2016-18-14.png)
---
![](Screenshot%20from%202018-04-13%2016-18-39.png)
---
![](Screenshot%20from%202018-04-13%2016-18-49.png)
---
![](Screenshot%20from%202018-04-13%2016-18-59.png)
---
![](Screenshot%20from%202018-04-13%2016-19-13.png)
---
![](Screenshot%20from%202018-04-13%2016-19-22.png)
---
![](Screenshot%20from%202018-04-13%2016-19-58.png)
---
![](Screenshot%20from%202018-04-13%2016-20-33.png)
---
![](Screenshot%20from%202018-04-13%2016-20-42.png)
---
![](Screenshot%20from%202018-04-13%2016-21-26.png)
---
![](Screenshot%20from%202018-04-13%2016-22-01.png)
---
![](Screenshot%20from%202018-04-13%2016-22-03.png)
---
![](Screenshot%20from%202018-04-13%2016-22-58.png)
---
![](Screenshot%20from%202018-04-13%2016-23-38.png)
---
![](Screenshot%20from%202018-04-13%2016-23-41.png)
---
![](Screenshot%20from%202018-04-13%2016-24-04.png)
---
![](Screenshot%20from%202018-04-13%2016-24-13.png)
---
![](Screenshot%20from%202018-04-13%2016-24-26.png)
---
![](Screenshot%20from%202018-04-13%2016-24-40.png)
---
![](Screenshot%20from%202018-04-13%2016-24-48.png)
---
![](Screenshot%20from%202018-04-13%2016-25-44.png)
---
![](Screenshot%20from%202018-04-13%2016-26-00.png)
---
![](Screenshot%20from%202018-04-13%2016-26-21.png)
---
![](Screenshot%20from%202018-04-13%2016-27-14.png)
---
![](Screenshot%20from%202018-04-13%2016-27-23.png)
---
![](Screenshot%20from%202018-04-13%2016-27-36.png)
---
![](Screenshot%20from%202018-04-13%2016-28-08.png)
---
![](Screenshot%20from%202018-04-13%2016-28-21.png)
---
![](Screenshot%20from%202018-04-13%2016-28-30.png)
---
![](Screenshot%20from%202018-04-13%2016-28-37.png)
---
![](Screenshot%20from%202018-04-13%2016-28-51.png)
---
![](Screenshot%20from%202018-04-13%2016-29-04.png)
---
![](Screenshot%20from%202018-04-13%2016-29-10.png)
---
![](Screenshot%20from%202018-04-13%2016-29-43.png)
---

<a id="logs"></a>

### CloudWatch Logs
<p align="right"><a href="#top">Top</a></p>

![](Screenshot%20from%202018-04-13%2018-24-35.png)
---
![](Screenshot%20from%202018-04-13%2018-25-02.png)
---
![](Screenshot%20from%202018-04-13%2018-25-37.png)
---
![](Screenshot%20from%202018-04-13%2018-25-55.png)
---
![](Screenshot%20from%202018-04-13%2018-27-20.png)
---
![](Screenshot%20from%202018-04-13%2018-28-44.png)
---
![](Screenshot%20from%202018-04-13%2018-30-35.png)
---
![](Screenshot%20from%202018-04-13%2018-30-58.png)
---
![](Screenshot%20from%202018-04-13%2018-31-13.png)
---
![](Screenshot%20from%202018-04-13%2018-31-38.png)
---
![](Screenshot%20from%202018-04-13%2018-31-40.png)
---
![](Screenshot%20from%202018-04-13%2018-31-43.png)
---
![](Screenshot%20from%202018-04-13%2018-32-26.png)
---
![](Screenshot%20from%202018-04-13%2018-32-35.png)
---
![](Screenshot%20from%202018-04-13%2018-32-44.png)
---
![](Screenshot%20from%202018-04-13%2018-32-59.png)
---
![](Screenshot%20from%202018-04-13%2018-33-05.png)
---
![](Screenshot%20from%202018-04-13%2018-33-07.png)
---
![](Screenshot%20from%202018-04-13%2018-33-27.png)
---
![](Screenshot%20from%202018-04-13%2018-33-33.png)
---

<a id="filters"></a>

### CloudWatch Log Filters
<p align="right"><a href="#top">Top</a></p>

![](Screenshot%20from%202018-04-13%2018-39-08.png)
---
![](Screenshot%20from%202018-04-13%2018-39-24.png)
---
![](Screenshot%20from%202018-04-13%2018-40-03.png)
---
![](Screenshot%20from%202018-04-13%2018-40-37.png)
---
![](Screenshot%20from%202018-04-13%2018-41-17.png)
---
![](Screenshot%20from%202018-04-13%2018-41-33.png)
---
![](Screenshot%20from%202018-04-13%2018-41-46.png)
---
![](Screenshot%20from%202018-04-13%2018-42-09.png)
---
![](Screenshot%20from%202018-04-13%2018-42-11.png)
---
![](Screenshot%20from%202018-04-13%2018-42-19.png)
---
![](Screenshot%20from%202018-04-13%2018-42-45.png)
---
![](Screenshot%20from%202018-04-13%2018-42-58.png)
---
![](Screenshot%20from%202018-04-13%2018-43-05.png)
---
![](Screenshot%20from%202018-04-13%2018-43-15.png)
---
![](Screenshot%20from%202018-04-13%2018-43-43.png)
---
![](Screenshot%20from%202018-04-13%2018-43-57.png)
---
![](Screenshot%20from%202018-04-13%2018-44-21.png)
---
![](Screenshot%20from%202018-04-13%2018-44-48.png)
---
![](Screenshot%20from%202018-04-13%2018-44-51.png)
---
![](Screenshot%20from%202018-04-13%2018-44-57.png)
---
![](Screenshot%20from%202018-04-13%2018-45-11.png)
---
![](Screenshot%20from%202018-04-13%2018-45-40.png)
---
![](Screenshot%20from%202018-04-13%2018-45-46.png)
---

<a id="real-time"></a>

### Real-Time Log Processing
<p align="right"><a href="#top">Top</a></p>

![](Screenshot%20from%202018-04-13%2018-46-11.png)
---
![](Screenshot%20from%202018-04-13%2018-50-43.png)
---
![](Screenshot%20from%202018-04-13%2018-51-12.png)
---
![](Screenshot%20from%202018-04-13%2018-51-30.png)
---
![](Screenshot%20from%202018-04-13%2019-06-21.png)
---
![](Screenshot%20from%202018-04-13%2019-06-29.png)
---
![](Screenshot%20from%202018-04-13%2019-06-37.png)
---
![](Screenshot%20from%202018-04-13%2019-06-38.png)
---
![](Screenshot%20from%202018-04-13%2019-06-48.png)
---
![](Screenshot%20from%202018-04-13%2019-06-50.png)
---
![](Screenshot%20from%202018-04-13%2019-06-52.png)
---
![](Screenshot%20from%202018-04-13%2019-06-56.png)
---
![](Screenshot%20from%202018-04-13%2019-07-08.png)
---
![](Screenshot%20from%202018-04-13%2019-07-27.png)
---
![](Screenshot%20from%202018-04-13%2019-07-36.png)
---
![](Screenshot%20from%202018-04-13%2019-07-50.png)
---
![](Screenshot%20from%202018-04-13%2019-08-06.png)
---
![](Screenshot%20from%202018-04-13%2019-08-10.png)
---
![](Screenshot%20from%202018-04-13%2019-08-22.png)
---
![](Screenshot%20from%202018-04-13%2019-08-32.png)
---
![](Screenshot%20from%202018-04-13%2019-09-03.png)
---
![](Screenshot%20from%202018-04-13%2019-09-10.png)
---
![](Screenshot%20from%202018-04-13%2019-09-27.png)
---
![](Screenshot%20from%202018-04-13%2019-09-50.png)
---
![](Screenshot%20from%202018-04-13%2019-09-59.png)
---
![](Screenshot%20from%202018-04-13%2019-10-05.png)
---
![](Screenshot%20from%202018-04-13%2019-10-08.png)
---
![](Screenshot%20from%202018-04-13%2019-10-24.png)
---
![](Screenshot%20from%202018-04-13%2019-10-56.png)
---
![](Screenshot%20from%202018-04-13%2019-11-15.png)
---
![](Screenshot%20from%202018-04-13%2019-11-24.png)
---
![](Screenshot%20from%202018-04-13%2019-11-31.png)
---
![](Screenshot%20from%202018-04-13%2019-12-09.png)
---
![](Screenshot%20from%202018-04-13%2019-14-13.png)
---
![](Screenshot%20from%202018-04-13%2019-14-22.png)
---
![](Screenshot%20from%202018-04-13%2019-14-29.png)
---
![](Screenshot%20from%202018-04-13%2019-14-34.png)
---
![](Screenshot%20from%202018-04-13%2019-14-37.png)
---
![](Screenshot%20from%202018-04-13%2019-14-45.png)
---
![](Screenshot%20from%202018-04-13%2019-14-51.png)
---
![](Screenshot%20from%202018-04-13%2019-15-15.png)
---
![](Screenshot%20from%202018-04-13%2019-15-45.png)
---
![](Screenshot%20from%202018-04-13%2019-16-40.png)
---
![](Screenshot%20from%202018-04-13%2019-17-08.png)
---

<a id="cloud-trail"></a>

### CloudTrail
<p align="right"><a href="#top">Top</a></p>

![](Screenshot%20from%202018-04-13%2019-17-55.png)
---
![](Screenshot%20from%202018-04-13%2019-17-57.png)
---
![](Screenshot%20from%202018-04-13%2019-18-45.png)
---
![](Screenshot%20from%202018-04-13%2019-19-03.png)
---
![](Screenshot%20from%202018-04-13%2019-19-42.png)
---
![](Screenshot%20from%202018-04-13%2019-20-15.png)
---
![](Screenshot%20from%202018-04-13%2019-20-54.png)
---
![](Screenshot%20from%202018-04-13%2019-21-19.png)
---
![](Screenshot%20from%202018-04-13%2019-22-48.png)
---
![](Screenshot%20from%202018-04-13%2019-22-55.png)
---
![](Screenshot%20from%202018-04-13%2019-23-06.png)
---
![](Screenshot%20from%202018-04-13%2019-23-26.png)
---
![](Screenshot%20from%202018-04-13%2019-24-35.png)
---

<a id="events"></a>

### CloudWatch Events
<p align="right"><a href="#top">Top</a></p>

![](Screenshot%20from%202018-04-13%2019-24-47.png)
---
![](Screenshot%20from%202018-04-13%2019-26-29.png)
---
![](Screenshot%20from%202018-04-13%2019-26-59.png)
---
![](Screenshot%20from%202018-04-13%2019-27-36.png)
---
![](Screenshot%20from%202018-04-13%2019-28-00.png)
---
![](Screenshot%20from%202018-04-13%2019-29-27.png)
---
![](Screenshot%20from%202018-04-13%2019-30-04.png)
---
![](Screenshot%20from%202018-04-13%2019-30-13.png)
---
![](Screenshot%20from%202018-04-13%2019-30-23.png)
---
![](Screenshot%20from%202018-04-13%2019-30-34.png)
---
![](Screenshot%20from%202018-04-13%2019-31-12.png)
---
![](Screenshot%20from%202018-04-13%2019-31-22.png)
---
![](Screenshot%20from%202018-04-13%2019-31-35.png)
---
![](Screenshot%20from%202018-04-13%2019-31-54.png)
---
![](Screenshot%20from%202018-04-13%2019-31-56.png)
---
![](Screenshot%20from%202018-04-13%2019-32-09.png)
---
![](Screenshot%20from%202018-04-13%2019-32-31.png)
---
![](Screenshot%20from%202018-04-13%2019-33-34.png)
---
![](Screenshot%20from%202018-04-13%2019-34-16.png)
---

<a id="quiz"></a>

### Monitoring/Metrics/Logging Quiz
<p align="right"><a href="#top">Top</a></p>

![](Screenshot%20from%202018-04-13%2019-35-16.png)
---
![](Screenshot%20from%202018-04-13%2019-36-53.png)
---
![](Screenshot%20from%202018-04-13%2019-38-20.png)
---
![](Screenshot%20from%202018-04-13%2019-39-58.png)
---
![](Screenshot%20from%202018-04-13%2019-41-41.png)
---
![](Screenshot%20from%202018-04-13%2019-42-35.png)
---
![](Screenshot%20from%202018-04-13%2019-42-38.png)
---

The End

<p align="right"><a href="#top">Top</a></p>