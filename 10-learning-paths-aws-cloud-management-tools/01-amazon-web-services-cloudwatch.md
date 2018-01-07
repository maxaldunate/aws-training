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
