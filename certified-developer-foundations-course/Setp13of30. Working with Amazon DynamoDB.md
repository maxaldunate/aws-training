# Working with Amazon DynamoDB

## DynamoDB Basics
* PROS
  * Fully managed NoSql
  * Charges by Storage and Throughput
  * High Available. Distributed across 3 AZ
  * No extra time in a large DB of TeraBytes
  * Need provision throughput
  * 'Infinitely' escalable
* CONS
  * Data is only eventually consistent
  * No flexible query language
  * Limited datatypes: string, numbers, bool & binary
  * Max record size 400 KB
  * Max 10 indexes per Table
  * Need to monitor: ProvisionedThroughputExceeded exception

* Comparision DynamoDB with other SQLs DDBB
  * Query via API, no SQL language
  * Schemaless, no strict schema
  * Scalable
  * Eventually consistent, no ACID
  * Tied you with AWS (no on-premise)

* Comparision DynamoDB with other NoSQLs
  * Document-Oriented like Mongo. No Key-Value or Column
  * Eventually consistent, no immediatly
  * transparent scalable, no adding servers

* Using Dynamo DB in your App. API methods:
  * Manage Tables  
  ListTables, DescribeTables, CreateTables, UpdateTables & DeleteTables.  
  * Reading Data  
  GetItem, BatchGetItem, Query & Scan.  
  * Modifying Data  
  PutItem, UpdateItem, DeleteItem & BatchWriteItem.  

## Creating Dynamo Tables

* Creating your first Table  
Demo. Partition Key and Sort Key  
* Creating a Table with Composite PK   
Ex1. User Action Log Table  
userName, timestamp  
PartitionKey username, SortKey timestamp  
PK = PartitionKey + SortKey  
PK = username + timestamp  

Ex2. Gaming Platform High Scores  
userId, game, highScore  
PartitionKey userId, SortKey game  
PK = userId + game  

Ex3. Order line items tale  
orderId, lineNumber, productId , status: shipped or unshipped  
PartitionKey userId, SortKey game  
PK = userId + game  
PK = orderId + lineNumber  

* Understanding Provisioned Throughput
  * Limited burst capacity on RCU and WCU
  * ProvisionedThroughputExceeded exception

### Capacity Units

* RCU. Read capacity units
  * 1 item a second
  * Up to 4 KB size
  * With strong consistency
  * Each second
  * Longer records cost 1 RCU for every 4 KB
  * Eventually consistent reads cost a half
* WCU. Write capacity Units
  * 1 item per second
  * Up to 1 KB
  * Longer records cost 1 WCU for every 1 KB

* You can change at any moment (few minutes)

* Metrics Tab
  * ReadCapacity, Throttled read requests
  * WriteCapacity, Throttled write requests

## Reading and Writing Data

### Using the aws console to read & write

* Types
  * Sets: No order, one type: string, numbers or binary
  * Map: structured hierarchy data
  * Lists: arrays, orderer
  
### Using the API to read & write
* Boto3 example

## Queries and Scans

### Understanding Queries & Scans

* Query
  * By single partition key
  * limited by a range or sort key
  * =25, >9, begin with "Ross"
  * Result can be filteres on any attribute, but same work to get and little more work to filter
  * Results can be order by sort key
  * Queries can be
    * Strongle consistent (3 AZ replica)
	* Eventually consistent (just 1 replica)

* Scan
  * All partition keys
  * Can be filtered on any attribute
  * Are always eventually consistent
  * Can be run in parallel from multiple threads and servers
  
### Queries and Scans on aws console
Demonstration  
### Queries and Scans with the API
Demonstration  
* query() 
  * Count = 9
  * Items returned[] = 9
  * No filters
  * ScannedCount = 9
* scan() 
  * Count = 9
  * Items returned[] = 9
  * ScannedCount = 9
  
## Secondary Indexes

### Understanding Secondary Indexes
* Each query can use one index
* Index Name in the query
* GSI. Global Secondary Indexes
  * Across entire table
  * Are like table itself
  * You can project attributes into index. All is default
  * Can have sort keys
  
Ex 1 GSI (like other table)  
CustomerId		OrderDate		OrderId		Payment  
43				2017-03-28		579			Credit Card  
43				2017-04-01		178			Credit Card  
43				2017-04-03		727			Credit Card  
19				2017-03-30		161			Credit Card  
19				2017-04-06		054			Credit Card   
61				2017-03-29		102			Store Credit  
PartitionKey	SortKey			PrimaryKey (Orders Table)  

Ex 2  
ProductId		Status			OrderId		LineNumber
17				Shipped			102			1
17				Shipped			161			1
17				unshipped		178			1
17				unshipped		102			2
23				Shipped			102			3
27				unshipped		727			1
27				unshipped		178			2
PartitionKey	SortKey			POriginal PrimaryKey

* LSI. Local Secondary Indexes
  * Lives with each partition
  * Must be a table with compound PK

Comparision  
* GSI
  * Created with the table or later
  * Throughput provisiones separately for each
  * 5 per table maximum
* LSI
  * Must create with the table
  * Throughput shared with the table
  * 5 per table maximum
  
### Creating Secondary Indexes
* Index Tab
* LSI partition key equal at the table
* GSI costs like another table

### Introduction to partitioning
* Why partition key
* How many partitions?
  * Max Between
    * TableSize/10GB
	* RCU/3000 + WCU/1000

EX.1  
Table Size 6GB  
RCU 15.000  
WCU  2.000  

1) 6/10 = 0.6  
2) 15000/3000 + 2000/100 = 5 + 2 = 7  
==> 7

EX.2  
Table Size 380GB  
RCU 2.100  
WCU   400  

1) 380/10 = 38
2) 2100/3000 + 400/100 = 1.1
==> 38

EX.3 Take care of Bulk Inserts  
Table Size 0GB  
RCU       30  
WCU   10.000  

1) 0/10 = 0
2) 30/3000 + 10000/100 = 10.01
==> 11

Eleven Partitions just for the provisioned WCU !!!  

** Partitions can Grow but not reduce **

EX.4 Bulk Read (like export)
Table Size 4GB  
RCU   30.600  
WCU      200    

1) 4/10 = 0.4
2) 30.600/3000 + 200/100 = 10.40
==> 11

* Natural Groeth means this will oftwen be a power of 2

## Working with Large Tables

* Blancing Partitions in large tables
  * The orders lines table
  * We have 4 partitions
  * If we add "Wallmart" like a client, there will be orders with many lines goint to one partition
  * Partitions share WCU & RCU in a linear way. 1/4 for each in this case
  * Aument R & WCU could be very expensive if we have 60 partition, just for one partition to use
  * Solution: New Artificial partition key like "LineItemId"
  


