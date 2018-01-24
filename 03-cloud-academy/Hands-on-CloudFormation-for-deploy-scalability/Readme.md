### Hands-on CloudFormation for deploy scalability

* [AWS Resource Types Reference](http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-template-resource-type-ref.html)

* CloudFormation Templates are JSON formatted files that contain, as top-level sub objects:
  - Resources, the only required sub object, which lists AWS resources to build their properties, dependencies, and so forth.
  - Parameters, which are inputs that configure the Template on a Stack by Stack (instantiation by instantiation) basis.
  - Mappings, which are objects that allow some variations based on keys - for instance, I may need a Mapping to load the correct AMIs of some kind for each region (since AMIs are region-specific).
  - Conditions, which allow basic conditional statements and evaluation based on Parameters and Mappings.
  - Outputs, which allow Template developers to return data from created Stacks for use in other systems or for review by humans.
  
1. Define Resources
```
"Resources": {
        "VPC": {},
        "PublicSubnet": {},
        "PrivateSubnet": {},

        "GatewayToInternet": {},
        "NATInstance": {},
        "RoutesForPublicSubnet": {},
        "RoutesForPrivateSubnet": {},
        "GenericNACL": {}
    }
```

Completing all needed resources.

2. Fill with template snippet from [AWS Resource Types Reference](http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-template-resource-type-ref.html)
* { "Ref": "?????" }
* CidrBlock-type 0.0.0.0/0
* The top and bottom ports to select all possible ports are "0" and "65535"
* For ImageId mapping combined with the { "Ref": "AWS::Region" }
* "DependsOn": ["GatewayAttachmentToVPC", "InstancesToNATSecurityGroup", "PublicSubnet"]
* Tags (ignored in this lab)
	
3. EC2 and DynamoDB-related Resources
* LoadBalancer
* AWS::DynamoDB::Table

4. IAM Resources and Security Groups

5. Output and Mappings
* Fn::Join
* Fn::GetAtt
* Fn::FindInMap

6. Launch!

