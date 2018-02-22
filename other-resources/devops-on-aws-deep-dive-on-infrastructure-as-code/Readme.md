# DevOps on AWS: Deep Dive on Infrastructure as Code

https://www.slideshare.net/AmazonWebServices/devops-on-aws-deep-dive-on-infrastructure-as-code  

## Infrastructure as Code Workflow
* Code
* Version Control
* Code Review
* Integrate
* Deploy
  
### AWS Resources   
* AWS CloudFormation   
* Ex: VPC, EC2, IAM, RDS, S3

### Operating System and Host Configuration  
* AWS OpsWork  
* Ex: MS WIndows Registry, Linux networking, OpenSSH, LDAP, AD Domain Registration, Centralizing Logging, System Metrics, Deployment Agents, Host Monitoring

### Application Configuration  
* AWS CodeDeploy  
* Ex: App Dependencies, App Configuration, Service Registration, Management Scripts, DDBB Credentials

## AWS CloudFormation
* Benefits
  - Template resource provisioning
  - Infrastructure as code
  - Declarative and flexible
  - Easy to use (sure?)
* Concepts
  - Template json
  - Stack Creation, Updates, Rollback, Delete
* Components
  - Headers
  - Parameters
  - Mappings
  - Conditionals
  - Resources
  - Outputs
* **Bootstrapping applications and handling updates**
  - Option 1: User Data (into template)
  - Option 2: Helper scripts. AWS::CloudFormation::Init into "Metadata" EC2 property
	* cfn-get-metadata
	* cfn-signal
	* cfn-hup
	* cfn-init
  - Validate Template: 
    * `$ aws cloudformation validate-template`
	* [JSONLint] (http://jsonlint.com)

## AWS OpsWorks
* Characteristics
  - Configuration management service using Chef
  - Model, control and automate apps of nearly any scale and complexity
  - Manage Linux and Microsoft
  - Aws and on-premise servers
  - Launched in 2013
* Concepts
  - Stack
  - Layer
  - How to scale: manually or automate with load-based or time-based
  - Deploy
* Instance  lifecycle
  - Set up
  - Configure
  - Deploy
  - Undeploy
  - Shut down
* Many things to learn
  
## AWS CodeDeploy
* Characteristics
  - Automates code deployments to any instance
  - Avoid downtime during deployments
  - Aws or on-premise
  - Any operating system
* How it works
  - Package app with appspec.yml
  - Specify targets
  - Deploy
* Deployment COnfigurations
  - One at a time
  - Custom
  - Half at a time
  - All at once
  


  

  