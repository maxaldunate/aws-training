# Certified Developer for AWS - Deployment and Security

## Security
* Shared Security Model
* Security in the cloud for areas
  1 Data Protection  
    At rest and in transit  
  2 Privilege Management  
    Users have least privilege   
  3 Infraestructure Protection
  4 Detective Controls  
    Monitoring and testing  
* Responsability 
  * Custom: 1, 2 & 4  
    OS, AMIs, Apps, Data Rest & Transit, Data Store, Credentials, Policies & Configuration  
  * AWS: 3. Facilities, Netwrok and virtualization
* Compliance
  * Standars   
      * AICPA: SOC1, SOC2, & SOC3
	  * ISO 9001, 27001, 27017 and 27018
	  * PCI DSS level 1
	  * HIPPA
  * Audit tools
  * Penetration tests requiere AWS approval
* Security Best Practices
  1) use SG  
  2) Add ACLs
  3) IPSec or AWS Direct Connect for trusted connections to other sites
  4) VGW
  5) Protect data in transit
  6) Design network security in layers (DMZ, etc)
### IAM. Identity and Access Management
* Individual users
* Groups   
* Aws Services
* AWS Policies for users, groups and services --> AWS Resources
* IAM policies control who can read, write, create or delete an object or a services
###  Privilege Management
* IAM Users - Groups
  * MFA
  * Identity providers
  * Access Keys
  * Password
* Role is associate with a service (like EC2), not associate with user or group
### Demonstration ACME
* Policy Templates
  * Admin
  * AWS Connector
* AWS Policiy Simmulator
* IAM Role
  * Role Types
    * Role for cross-account access (other than aws)
	* Role for Identity Providers access like google, aws, facebook
	* AWS Service Roles
### IAM Best Practices
1) MFA on root and remove access key
2) Create individuals IAM users
3) Use Groups
4) Grant least privileges
5) Strong password policies
6) MFA for privileged users
7) Use roles ofr apps that run on Amazon EC2 instances
8) Delegate using Roles instead by sharing credentials
9) Rotate credentials
10) Remove unnecessary credentials and users
11) Use policy conditions for extra security
12) Monitor activiti in the account. Amazon CloudWatch, CloudTrail and Aws Config	

### Identity Federation
* Federated Identity
Mobile App Example  

Insecure:  
MobileApp	-- **credentials** --> Route 53 --> ELB --> EC2  

Autoscaling Group --> EC2+SG	Root EBS	Data EBS-->EBS Snapshot  
--> CloudFron Logs S3

Better:  
MobileApp  
Any OIDC provider:  
Like Amazon, Facebook, google, etc  

--> Amazon STS --> Token --> Role --> SG  

* Roles
  * Thirs type of roles
  * SSO
  * SAML = Security Assertion Markup Language
  
* Diagram  
Us = User Agent  
Sp = Service Provider  
Ip = Identity Provider  

Pasos  
* 1 Us  --> Sp. Request target resource   
*   Us <--> Sp. Discover Id PCI
* 2 Sp  --> Us. Redirect to SSO Server
* 3 Us  --> Ip. Request SS Service
*   Us <--> Ip. Identify user
* 4 Ip  --> Us. Respond with XHTML form
* 5 Us  --> Sp. Request Assertion Consumer
* 6 Sp  --> Us. Redirect to target resource
* 7 Us  --> Sp. Request target resource
* 8 Sp  --> Us. Respond with requested resource

* Web Identity Federation
  Open Id connect compatible common Id provider  

* Amazon Cognito
  MobileApp --> Amazon Cognito ---> Token
  * for Mobile SDKs: Android, iOs, FireOs, Unity, JAvascript
  * for WebServices
  * for AD in the company (for login in the aws console)

* STS Security Token Sercice. Active for 15 mins

## Protecting Data ar Rest and in Transit
* Amazon KMS. Key Management Service
* Amazon CloudHSM. Hardware Security Module

* Encryption Options  
  * KMI = Key Management Infraestructure  
    * EM = Encrypt Method
    * KS = Key storage
    * KM = Key Management
1) Custom Managed: EM, KS & KM user managed
2) AWS Manages: EM, KS & KM all aws
3) MIxed: User: EM & KM. Aws manage KS

* SafeNet Luna Compatible
* Envelped encryption is ised in aws for server-side ecryption
* Datyaat Rest
  Encryption options for aws data services  
  * EBS (all types)
    - use KMS
	- on CMK Custom Master Keys
	- Same IOPS performance
	- Block level and file system level encryption
	- tools only on EBS not boot volumes
  * S3
    - AES-256. Advanced Encryption Standard
	- for both: objects and master keys
  * Glacier
    - All AES-256
  * Redshift: 
    - None
	- KMS
	- HSM
  * MsSQL. Transparent data ecryption
  * Oracle. Transparent data ecryption

### Securing data in transit
- Between instances and databases  
* SSL Connections
* For MySQL and MsSQL, RDS creates SSL certificates
* Aws Storage Gateway transfer data to aws over ssl
* Outbound connection from outside
  - HTTPS
  - SSL Secure Socket Layer on 443
* All aws services provides secure customer access points that allow you to establish secure
* ELB Protocol for Frontend and backend
* SSL uses an X509 certificates
* CA Certificate Authority
* AWS Certificate Manager
* Ciphers.

### Thread Mitigation
* ISMS. Information Security Management Strategy
* INclude thread model, risk management & msurement criteria
* Aws Security
* Aws CloudSecurity
* Platform Compliance
* Data Encryption ar Rest and in transit

### Auditing Tools
* Aws CloudWatch
* Aws CloudTrail
* Aws Config

### Aws CloudWatch
* 5 mins interval for Basic
* 1 mins interval for Detailed

### Aws CloudTrail
* Logs API calls, Id, time, source IP, parameters and response

### Aws Config
* Inventory and configuration history service

### Inline thread protection
* Softblades: 3rd party firewall on EC2
* UTM. Unified thread management gateway
* Intrusion prevention system
* Data loss management gateways
* Anomaly detection GWs
* Advanced persistent thread detection GWs
* WAF. Web App firewall
* Host-based or inline IDS/IPS System for DoS/DDoS attacks (troyans)
* Traffic shapping/rate limiting
* Embryonic session limits

### Tests
* External vulnerability assesment
* External penetration tests
* Internal grey/white boxreview
* Aws acceptable use policy
* Notify aws before attemping any in bound or outbound penetration test

### Amazon CloudFron Security
* HTTPS
* Config to only HTTPS
* Logs access info
* Store to S3
* Private content feature. Controls who is able to download
* Users --> CloudFront --> S3
* Signed Urls to authenticated users
* Set signed cookies on auth users
* CF create origin access identity associated with distributions

### ExamCram

### ExamPrep


## Deployment

### Amazon CodeDeploy
* Deployment Service
* Works anywhere, even on-premise
* Windows & Linux
* Key Concepts
  * Application
  * Revision. Code source & AppSpec file on S3 or GitHub
  * Deployment Group. Set of instances: Prod, Dev, etc.
  * AppSpec file. Explain how to deploy
* Schema  
Revision --Reads--> CodeDeploy (Read AppSpec) --> Deploy PROD, Deploy DEV  
* AppSpec file
  * YAML file
  * Map Files
  * Set Permissions
  * Scripts
* Steps
  1. Start
  2. AppStop
  3. Download Bundle
  4. BeforeInstall
  5. Install
  6. AfterInstall
  7. AppStart
  8. ValidateService
  9. End
* You can run scripts at: 2,4,6,7 & 8
* How it works
  1. CodeDeploy looks for tags on instances
  2. CodeDeploy deploy new instances
  3. Instances download revision
  4. Instances send results to CodeDeploy

### EC2 Setup
* Tags+Sercice Role
* Install Agent
* Install Role

* Pricing
  * Free for EC2
  * $0.02 per on-premise instance update
  
### Demonstration
* Simple deployment
* Add tags
* If no EC2 runnning press Launch
  * Launch a CloudFormation template
    - Create 3 instances
	- Instance roles
	- Sercice Role
	- Install the agent
  * App Name
  * Revision location (S3) can download
  * Deployment group name: 'Dev'
  * Deployment Configuration
    - One at a time
	- Half at a time
	- All at once
* View instances --> view events
* $ aws configure
* upload bundle to S3 or gitHub
* $ aws deploy push --app-name myApp --se-location "arn"

## Amazon CodeCommit
* Source Controls
* Secure (all ecrypted)
* High Available. On top of S3 and DynamoDB
* Store anything
* GitHub
* Pricing
  * $ 1 per active users per month
  * per each user 10 GB month storage
  * 2000 Git requests
  * Additional 
    * 0.06  per GB-month
	* 0.001 per Git rrequest
* Demonstration
  * SSH or HTTPS
  * All are private
  * IAM users
  * Generate SS key to the user
  
## Amazon CodePipeline
* Continuos Delivery Service
* Easy to integrate with Github and Jenkins
* Process: Build - Staging - Production - Changes --> Build...  
* Pricing: $1 per active pipeline per month
* Demonstration 
  * Create S3 bucket for source (versioned)
  * CloudFormation template
  * in CodeDeploy custom deploy
  * in CodePipeline console
    1. Name
	2. Source
	3. Build
	4. Beta deployment provides: Aws Beanstalk or Aws CodeDeploy
	5. Aws Service Role
	6. Review & Create
* Create on EC2 for Jenkins Server (a new role)

### Exam Prep


	
	
  





