# Amazon Web Services Cloud Watch

## Intro

* Pricing
  - Basic
    * 5 minutes
    * 3 dash boards
    * 50 metricts
  - Enhance
    * $3/dashboard
    * unlimited metrics priced by 10k, 240k and 1MM
    * 1 minute
* Logging
* Alarms

## Getting started
## Building a dashboard
* create a dashboard
* add widget
* you can select time zone
* duplicate widget
* 2 metrics to the same widget
* type widget "text"

## Monitoring EC2 instances
* lack of MEM & Disk space
* Role to cloudWatch push metrics. Add CloudWatch full access poilicy
* Whitepaper AWS Monitoring MEM & DIsk metrics for Amazon EC2
* Custom metrics have a price
* copy & paste from white paper to EC2 and run
* perl script non-put-instance-data
* --verbose no send data to cloudwatch
* edit crontab file, sudo nano crontab
* ar console/metrics and now can see mem and disk are availables

## Sending log files to CloudWatch
* export logs to tools such as 'Athena' or 'Splunk'
* that tools are analytic, but CloudWatch is collection data tool
* with autoscaling you need to launch ec2 instances with cloudwatch enable by default
* Steps
  * add policy 'CW log full access' to IAM Role
  * on ec2 install aws log package
  * put service on at satart up
  * push logs to correct region
  * `$ cd /etc/awslogs`
  * `$ cat awscli.conf` default region
  * console CW/logs (default /var/messages/)
  * Add apache logs
    - `sudo su`
    - `cd /var/log/http`
    - `ll`
    - `cd /etc/awslogs`
    - `ll`
    - `nano awslogs.conf` (select files to push)
    - Add names you want
  * console CW/log we have the new file
  * add httpd access_log
* Expire event (on console)
* Push to S3

## Alarms
* set upper or lower limit ie. Tolerance
* Stepts to create alarm with HC
  - create a file html to health check
  - goes Route53/health-checks/create
  - get notified no
  - see healthcheckers Tab
  - create an Alarm inAlarm Tab (SNS)
  - Conclusion: You create the alarm not via CloudWatch
* Create Alarm on CW
  - Console CloudWatch/Alarms/Create Alarm
  - Add custom metric, instance, disk space used
  - Period: 1 min, 5, 15, 1 hour, 6, 24
  - Type average, min, max, sum
  - missing data (info box)
  - notification list
* Add another alarm CPU utilization


