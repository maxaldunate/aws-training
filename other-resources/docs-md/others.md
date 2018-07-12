### [Route 53 Routing Policies](https://docs.aws.amazon.com/Route53/latest/DeveloperGuide/routing-policy.html)
* Simple
* Failover
* Geolocation
* Geoproximity 
* Latency
* Multivalue
* Weighted

### [Amazon RDS vs Redshift vs DynamoDB vs SimpleDB](https://www.cloudberrylab.com/blog/aws-database-services-complete-overview-rds-vs-redshift-vs-dynamodb-vs-simpledb/)
* Amazon RDS
  **Conventional DDBB**
  64 vCPU & 244 GB RAM
  6 TB per instance
  20.000 IOPS
  M.Win 30" p/week
  MultiAZ additional
* Redshift
  **Data warehouse**
  Nodes with vCPU & 244 GB RAM
  16 TB per instance
  M.Win 30" p/week
  MultiAZ Manual
  9.900 tables
* DynamoDB
  **DDBB for dynamically modified data**
  Software as a service
  Unlimited size
  40.000 R/W per table
  M.Win no effects
  MultiAZ Built-in
  256 tables
* SimpleDB
  **Simple DDBB for small records or aux roles**
  Software as a service
  10 GB per domain
  25 W/Seconds
  M.Win no effects
  MultiAZ Built-in
  250 tables


### [Quick Explanation Of The S3 Consistency Model](https://codeburst.io/quick-explanation-of-the-s3-consistency-model-6c9f325e3f82)

Amazon S3 provides **read-after-write consistency for PUTS of new objects** in your S3 bucket in all regions with one caveat. The caveat is that if you make a HEAD or GET request to the key name (to find if the object exists) before creating the object, Amazon S3 provides eventual consistency for read-after-write.

* Example 1
  PUT /key-prefix/cool-file.jpg 200
  GET /key-prefix/cool-file.jpg 200 (read-after-write)
* Example 2
  PUT /key-prefix/cool-file.jpg 200
  PUT /key-prefix/cool-file.jpg 200 (new content)
  GET /key-prefix/cool-file.jpg 200 (eventual consistency - old or new content)
* Example 3
  GET /key-prefix/cool-file.jpg 404
  PUT /key-prefix/cool-file.jpg 200
  GET /key-prefix/cool-file.jpg 404  (eventual consistency)


