# Working with Amazon CloudFront

* Fault tolerant, globally scalable CDN service
* satatic & dynamic content
* Edge locations
* Amazon CloudFront Edge Network  
  Us, Europe, Asia, Australia, South America
* Edge Location: if is cached ? served immediatly by cloudFron : take from the origin
* 24 hs by default
* Pricing
1. Model
   - Data Transfer
	 - out to internet
	 - to the origin
   - HTTP/S requests
1. Free tier
   - 50GB data transfer
   - 2 MM http/s requests
1. Transfer from S3 to CF is for free (S3 charges will apply)
1. Serving objects from edge locations  
   Price vary on geographics regions
1. Users to Origin: Detele, Options, Patch, Post & Put  
   Price also vary on geo regions
1. HTTP/S by 10.000 requests (geo variation too)
1. Additional components
   - Invalidation Requests (TTL)
     - First 1.000 are free
	 - Each additional is $0.005
   - SSL. your own certificate for https
   - Are free SNI (Server Name Indicator) relies on TLS  
     Allow multiple domain over the same IP
   - Dedicated IP custo SSL $600 per month  
	 for non SNI browsers
   - Price Class (limit edge locations)
	 - Price Class ALL
	 - Price Class 200: US, EU, Asia & Japan
	 - Price Class 100: US & EU only
   - Reserved Pricing
	 - 12 months upfront
	 - minimun of 10TB/mo from a single region
* Reports
  - Cache Statistics Report (60 days)
  - Popular Objects Report (top50)
  - Referrers Report (top25)
  - Usage Report (#, data trasnfered, etc)
  - Viewers Report (device, browser, ooss & locations)

### Web Distribution

* Overview Environment

USer --> Route 52 --> ELB --> [A], [B]  
[A]Edge Location <-- S3

[B] --> on SG1 ec2[t2.micro] + ec2[t2.micro]  --> S3  
    --> on SG2 RDS MySQL  
	
SG1: for WebServers. http from any, SSH from My IP
SG2: for RDS. 3306 for MySql and SG1 only  

S3 wordpress bucket: code & conmfigurations 
S3 wordpress CDN  

* Demonstration
  - Web Distribution: Static & dynamic, multimedia, livce event  
  - RTMP
    Adobe Media Server & Adobe Real-time MSG protocol

* Web Distribution Options
  - Origin Settings
    - Origin Domain Name: DNS of S· or HTTP Server  
	  Note if S3 like statics web site user url non arn
	- Restrict bucket access true/false  
	  Signed url or signed cookies  
	  Origin access Id  
	  Grant read permission on buckets  
	  No remove existent policies on buckets  
  - Default Cache Behavior Settings
    - Path patterns
	- Protocols: http/s, redirect http to https, https only
	- Allowed Http methods
	  - Get, Head
	  - Get, Head, Options
	  - Get, Head, Options, Put, Post, Patch & Delete
	- Forward Headers
	  - and Cache the object based a headers value
	  - CloudFront no cache by headers, if 2 equal object differs on headers only
	  - None/Whitelist/All
	- Object Caching
	  - Use origin cache headers
	  - Customize: min TTl, max TTL and Default TTL
	- Forward cookies
	- Forward Query String
	- Smooth Streaming: use MS Smooth Streaming
	- Restrict Viewser access: signed url or cookies
  - Distribution Settings
    - Price Class
	- CNAME - update DNS
	- SSL certificates
	- Default root object: index.php
	- Logging to S3 (no extra costs)
  - Explore Tabs
    - General. Domain name
	- Origin
	- Behavior. Add path patterns, arder ir a MUST
	- Error Pages for 4xx and 5xx
	- Restrictions: whitelist or blacklist by country
	- Invalidations: rename object from CloudFront before exprie

### Monitoring CloudFront with CloudWatch

* From CloudFront dashboard: Reports & Analytics
  - Filters
    - Date (60 days for daily view, 14 days for hourly view)
	- Granularity
	- Location
	- Distribution
	- Download CSV
  - Total Requests  
    Shows total # requests for all http codes an all methods
  - Percentage of Viewers Requests by Result Type  
    Shows hits (in cache), misses (no in cache) and errors in percentage
  - Bytes transferred to viewers  
    Shows total byte for objects serverd by CloudFront and # bytes misses
  - HTTP Status Codes  
    2XX ok, 3XX Redirections, 4XX client errores, 5XX server errors
  - Percentage of Get requests that didn't finish downloading
* Monitoring and Alarms (nothing?)
* Popular Objects
  - 50 top most popular objects & stats about the object: # requests, # of hits & misses, hit ratio and # of bytes
* Top Refferers  
  Shows top 25 refferers, total # requets and percentage
* Usage data trsnaferred by protocol
  - # requets and summary at bottom
  - Data transfer by destination
* Viewers
  - Devices: desktop, mobile, tablets, tv, bot/crawler & devicce trends
  - Browsers
  - Operating Systems
  - Locations  
    Useful to change edge locations
	
### Best Practices

* Static Assets
  - use S3 (if free to CloudFront)
  - Control access to S3 using Origin Access Identity, so S3 urls are not been use
  - Control access to content on CloudFront. ex. pai subscriptors using signed urls or cookies
  - Edge Caching. Setting high TTL and do not forward headers, query string or cookies unless absolutely required
  - Versioning  
    Will result in each object being treated as unique and allows for easy updates and rollbacks as you use the file name or query string to version
* Dynamic Assets  
¿Why cache if change frequently?
  - Cache Everything
    - CloudFront supports TTL as 0 zero seconds and even no-cache
	- Use CloudFront Popular Objects Report
	- Use multiple cache behaviors 
	  - only forwarding required headers
	  - avoid forwarding all cookies
	  - avoid forwarding user-agent headers
	  - instead use is-mobile-viewer and is-tablet-viewer
* Streaming Media
  - Set the right TTLs
    - usually low for manifest file
	- usually high for media file and player
  - Use http based streaming protocols
    - Distribution via web distribution to deliver multiple bit rate streaming using fragmented streaming format such as smooth streaming (natively supported in CloudFront)
* Design for Failure  
Take advantage of AWS services  
  - Route 53
  - Health Check
  - CloudWatch alarms and notifications  
More caching = Higher availability  
* Security
  - Enable end to end HTTPS
  - Use IAM users to control access to CloudFront
  - CloudTrail to record API calls