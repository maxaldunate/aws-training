# Certified Developer - Monitoring and Debugging

### Monitoring with Amazon CloudWatch

* Features and Benefits
  - Monitor EC2
  - Monitor other aws resources
  - Monitor custom Metrics
  - Monitor and store logs
  - Set Alarms
  - View graph and statistics

* By Default services monitored
  - S3
  - EBS
  - EC2
  - ELB
* Non By Default
  - Memory Utilization
  - Free disk space
  - INstall a reporting agent on instance
* System Check Failed
  - Instances
  - System
  - Any
  - Keeps data for 2 weeks by default
  - Move to S3 or Glacier with a Lambda function
* General 5 minutes. Detailed 1 minute
* Metrics are organized into categories called "Dimensions"
* Log Store and archive logs often ans instance is deleted
* Alarms
  - States: Ok, Alarm & Insufficient data
  - By Change os state
  - from ec2/matrics for example
  - from CloudWatch/dashboard/modify
  - Autoscaling alarms
  - Check the "Alarm state history" (tab). 50 last state changes
  
### Exam Prep

### Review of Sample Questions
