# How to Use CloudFormation for AWS Automation

## Anatomy of a Template

* Version
* Parameters
* Mapping
* Resources
* Conditions
* Outputs

### Pseudo Parameters
* Account Id
* Regions

### Mappings for different AMI Ids at each Region

### Resources
* Name: Unique
* Type: AWS::EC2::Volume
* Properties

### Conditions
* For DEV environment Fn::Equals, FN::FindInMap

### Outputs
* Example: url of the web site

## Deployment of a High Available infrastructure for Wordpress
* Template 'Wordpress Multi-AZ'

## CloudFormation template configuration wizard
* First Creare a Key Pair
* Stack Policy

## CloudFormation Stack Creation Process
