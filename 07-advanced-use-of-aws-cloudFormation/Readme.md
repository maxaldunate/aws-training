# Advanced Use of AWS CloudFormation

## State Machines
* Dependency Tree
* Parallel creation
* Stack SM
  * Create: Template + Parameters ==CF==> Stack
  * Update: Template + Parameters + Present Stack ==CF==> Stack
  * Delete: Present Stack ==CF==> Nothing
* Resource SM
  * Create: Properties ==Resource Provider Logic==> New Resource
  * Update: Properties + Previous Resource ==RPL==> Fresh Resource
  * Delete: Resource ==RPL==> Nothing
## Data Flow
* DevOps Maturity Level in English
![](devOps-level-in-english-maturity.jpg)
* DevOps Rubric & Scorecard
![](devOps-rubric-and-scorecard-maturity.jpg)
* Moving Through the levels (AWS)
![](moving-through-the-levels-aws.jpg)
* Stack Status LifeCycle
![](stack-status-lifecycle.jpg)
* CloudFormation Data Flow
![](cloudFormation-data-flow-.jpg)
## Lifecycle Demos
* DependsOn
* CI's: Circle CI, Jenkins, worker, etc
* Lambda
* Bash to run the stack and Test it



