## Aws Well Architected Framework
[Aws Training And Certification](https://www.aws.training/transcript/curriculumplayer?transcriptId=7pGhstV90E2g0kMQPRm6kg2)

### General Description
- Pillars
  * Security, Reliability, Performance Efficiency
    Cost Optimization & Operational Excellence
- Structure of each pillar
  * Design Principles
  * Definition
  * Best Practices
  * Key AWS Services
  * Resources
- General Design Principles
  * Stop guessing your capacity
  * Test systems at production scale
  * Automate to make architectural experimentation easier
  * Allow for evolutionary architectures
  * Data-driven architectures
  * Improve through game days

### Pillar One: Security
- Design Principles
  * Appy sec at all layers
  * Enable traceability
  * Automate responses to sec events
  * Focus on sec your system
  * Automate sec best practices
- AWS Shared Responsabiliti Model
- *Areas (Best Practices, Questions, Key Services)*
- Area 1 **Data protections**
  * Are you encrypting and protecting your data at Rest?
  * Are you encrypting and protecting your data in Transit?
  * ELB, ESB, S3 & RDS ==> KMS
- Area 2 **Privilege management**
  * ACLs, Role Based Access Controls, Password Management
  * How root access?
  * How roles and users console and APIs?
  * How limiting automated access?
  * How managing keys and credentials?
  * IAM, MFA
- Area 3 **Infrastructure protection**
  * How enforcing network & host-level boundary protection?
  * How aws service level protection?
  * How integrity of ooss on ec2 instances?
  * VPC
- Area 4 **Detective controls**
  * CloudTrail, CloudWatch, Aws Config, S3, Glacier
  * How are you capturing and analyzing aws logs?

### Pillar Two: Reliability
- Definition
  Ability to recover from services or infrastructure disruptions and to aquire resources to meet demand
  MySumm: fault-tolerant and elastic
- Design Principles
  * Test recovery procedures
  * Automatically recover from failure
  * Scale horizontally to increase aggregate system availability
  * Stop guessing capacity
- High Availability
  * No single point of failure
  * Multi AZ
  * Load Balancing
  * Auto Scaling
  * Redundant Connectivity  
- *Areas (Best Practices, Questions & Key Services)*
- Area 1 **Foundations**
  * IAM, VPC
  * Service limit prevent over provisioning
  * How manage aws service limits?
  * How plan network topology on aws?
  * Do you have escalation path to deal w/tech issues?
- Area 2 **Change management**
  * CloudTrail, Aws Config
  * How adapt to changes in demand?
  * How monitoring?
  * How execute change management?
- Area 3 **Faulire management**
  * CloudFormation
  * How backing data?
  * How withstand failures?
  * How plan for recovery?

### Pillar Three: Performance Efficiency
- Design Principles
  * Democratize advanced technologies
  * Go global in minutes
  * Use server-less architectures
  * Experiment more often
- CloudWatch (Monitor)--> Raise Alarms ==> Actions Performed by --> Kinesis, SQS, Lambda
- *Areas (Best Practices, Questions & Key Services)*
- Area 1 **Compute**
  * Autoscaling
  * How choose instance types?
  * How continue having right instance type over time?
  * How monitor to meet expected performance?
  * How quantity of instances to meet demand?
- Area 2 **Storage**
  * Optimal solutions depends on factors like:
    - Access method: block, file or object
    - Pattern of access: random or sequential
    - Throughput required
    - Frequency of access: online, offline or archival
    - Frequency of Update: Worm, Dynamic
    - Availability Constraints
    - Durability Constraints
  * Key Services: EBS, S3 & Glacier
  * Questions
    - How choose optimar storage'
    - How continue been optimal?
    - How monitor?
    - How ensure capacity and throughput match demand?
- Area 4 **Database**
  * Key Services: RDS, Dynamo, Redshift
  * Factors: consistency, availability, no-sql, DR, etc.
  * Questions
    - How appropriate ddbb solution?
    - How continue over time?
    - How monitor that performance are as expected?
    - How capacity and throughput matches demand?
- Area 5 **Space-time trade-off**
  * Examples
    - RDS read replicas lower latency
    - Direct Connect predictable latency
    - Elasticache or CloudFront reduce latency
  * Questions
    - How choose appropriate proximity and caching?
    - How continue over time?
    - How monitor?
    - How matches demand?
  * Key Services
    - CloudFront, Elasticache, DirectConnect, Snowball, RDS read replicas


### Pillar Four: Cost Optimization
- Design Principles
  * Trasnparently attribute expenditure
  * Use managed services to reduce cost of ownership
  * Trade capital expense for operating expense
  * Benefit from economies of scale
  * Stop spending money on data center operations
- *Areas (Def, Key Services, Questions)*
- Area 1 **Matched supply and demand**
  * No oever or under provision. Monitor what your demand is.
  * How capacity match demand?
  * How optimize usage of aws services?
  * Autoscaling
- Area 2 **Cost-effective resources**
  * Instance types, even bigger but less
  * resource types meet cost targets?
  * pricing model meet cost targets?
  * Are managed servers to improve your ROI?
  * EC2(reserved), Trusted Advisor
- Area 3 **Expenditure awareness**
  * Cost allocation tags, nilling alerts & consolidated billing
  * What controls to govern aws costs?
  * How monitor usage spending?
  * How decomission resources or stop it temporarily?
  * How consider data-transfer charges?
  * CloudWatch Alarms, SNS
- Area 4 **Optimizing over time**
  * How manage/consider the adoption of new services?
  * Aws Blog, Trusted Advisor

### Pillar Five: Operational Excellence
- Design Principles
  * Perform ops with code
  * Align ops processes to business objectives
  * Make regular, small, incremental changes
  * Test for responses to unexpected events
  * Learn from operational events and failures
  * Keep operations procedures current
- *Areas (Best Practices)*
- Area 1 **Preparation**
  * Checklists
  * Runbooks: for daily tasks
  * Playbooks: for unplunned events and escalation paths
  * CloudFormation, Autoscaling, Config, Tagging
  * What best practices for cloud ops are you using?
  * How config management?
  * Aws Config, Aws Service Catalog, Autoscaling, SQS ...
- Area 2 **Operation**
  * Automation, small frequent changes, testing
  * Mechanisms to track, audit, rollback & review changes
  * Changes not require manual execution nor downtime
  * CI/CD
  * How evolving while minimizing change impact?
  * How monitor workload?
  * CodeCommit, CodeDeploy, CodePipeline. Aws SDKs, CloudTrail
- Area 3 **Response**
  * Responses to unexpected op events should be automated
  * Not just alerting, but also migration, remediation, rollback & recovery
  * How respond to unplanned op events?
  * How is escalation?
  * CloudWatch


The End