# Working with Amazon CloudFront

* Fault tolerant, globally scalable CDN service
* satatic & dynamic content
* Edge locations
* Amazon CloudFront Edge Network
  * Us, Europe, Asia, Australia, South America
* Edge Location: if is cached ? served immediatly by cloudFron : take from the origin
* 24 hs by default
* Pricing
  1) Model
    - Data Transfer
	  - out to internet
	  - to the origin
	- HTTP/S requests
  2) Free tier
    - 50GB data transfer
	- 2 MM http/s requests
  3) Transfer from S3 to CF is for free (S3 charges will apply)
  4) Serving objects from edge locations  
     Price vary on geographics regions
  5) Users to Origin: Detele, Options, Patch, Post & Put
     Price also vary on geo regions
  6) HTTP/S by 10.000 requests (geo variation too)
  7) Additional components
    - Invalidation Requests (TTL)
	  - First 1.000 are free
	  - Each additional is $0.005
	- SSL. your own certificate for https
	  1) Are free
	    - SNI (Server Name Indicator) relies on TLS
		  Allow multiple domain over the same IP
	  2)Dedicated IP custo SSL $600 per month
		For non SNI browsers
	  3) Price Class (limit edge locations)
	    - Price Class ALL
	    - Price Class 200: US, EU, Asia & Japan
	    - Price Class 100: US & EU only
	  4) Reserved Pricing
	    - 12 months upfront
		- minimun of 10TB/mo from a single region
* Reports
  1) Cache Statistics Report (60 days)
  2) Popular Objects Report (top50)
  3) Referrers Report (top25)
  4) Usage Report (#, data trasnfered, etc)
  5) Viewers Report (device, browser, ooss & locations)
		  
	
