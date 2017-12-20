![](..resources/icons/labs.ico)
Lab. [Securing your VPC using Public and Private subnets](https://cloudacademy.com/amazon-web-services/labs/securing-your-vpc-using-public-and-private-subnets-with-network-acl-27/)  

1. Create VPC
  * Name "cloudacademy-labs" and CIDR "10.0.0.0/16". Room for 65536
  * New Network ACL
  * New Route table
  * Same DHCP options set. Already creates with the default vpc
    - DHCP options set
	- domain-name = us-west-2.compute.internal
    - domain-name-servers = AmazonProvidedDNS
2. Create Internet Gateway "labs-gw" and attach to VPC
3. Create Subnet
   * Name Public-A
   * VPC "cloudacademy-labs"
   * AZ us-west2a
   * CIDR 10.0.20.0/24 room for 256
4. Create a Route Table
   * PublicRouteTable on the "cloudacademy-labs" VPC
   * In Public-A Subnet change the default vpc RT to the new one PublicRouteTable
   * Modify RT Routes adding
     - destination "0.0.0.0/0"
     - target the internet gateway "labs-gw"
5. Launch EC2 Instance 
   * cloudacademy-labs VPC
   * Public-A (us-west-2a) AZ
   * Auto-assign Public IP: Select Enable
   * No IAM Role
   * New GS SG-bastion ("SG for bastion host. SSH access only")
     - SSH from MyIp
   * Existing KeyPair
   * Name "bastion"

### Bastion hosts are sometimes referred to as jump servers, as you jump to one, then back out of it. In this Lab Step you will create an EC2 instance that will serve as both an observer instance that you can run various tests from and a bastion host.

6. Create Subnet
   * Name Private-A
   * VPC "cloudacademy-labs"
   * AZ us-west2a
   * CIDR 10.0.10.0/24 room for 256
7. Create a Route Table
   * **PrivateRouteTable** on the "cloudacademy-labs" VPC
   * In Private-A Subnet change the default vpc RT to the new one **PrivateRouteTable**
   * Modify RT Routes adding
     - destination "0.0.0.0/0"
     - target the internet gateway "labs-gw"

### **Important!  This is a temporary setting. Later, you wil add a NAT instance and change the Target for the PrivateRouteTable to the NAT instance. (In this Lab, we are intentionally adding the NAT instance last for learning purposes, which will require a minor change to the private route table once the NAT instance is created and available.**  

8. Create Network ACL. 
   * "Private-NACL" with the "ca-labs" VPC (Deny all traffic by default)
   * In Subnet Associations add Private-A Subnet
   * Inbound Rules
     - 100 SSH         22 10.0.20.0/24(public subnet) ALLOW
     - 200 TCP 1024-65535   0.0.0.0/0				  ALLOW
   * Outbound Rules
     - 100 HTTP          80     0.0.0.0/0  				  ALLOW
     - 200 HTTPS        443     0.0.0.0/0				  ALLOW
	 - 300 TCP  32768-61000  10.0.20.0/24(public subnet)  ALLOW

Tip: Allow temporarily ICMP for ping utility
	 
9. Launch EC2 Instance 
   * cloudacademy-labs VPC
   * Private-A (us-west-2a) AZ
   * Auto-assign Public IP: Select disabled
   * No IAM Role
   * New GS SG-Private ("Security group for private instances. SSH inbound requests from Bastion host only.")
     - SSH from SG-bastion
   * Existing KeyPair
   * After running,name it "private"

  
In an earlier Lab Step, you launched a bastion host which used its own security group. However, at the time you configured the security group, there was not a security group for your private instance on the private subnet. Because there is now, you can further tighten down the bastion host's security group. You'll do that next before using SSH to connect to your bastion host and private instance.

10. Copy the Id of SG-Private security group (ex. "sg-dd6be1a1")

11. Modify SG-bastion
    * Outbound Rules.
	* Remain Just SSH(22)
	* Destination: Id of SG-Private

ALGO VA MAL DESDE AQUI

12. Log to Bastion Instance
	ssh -A ec2-user@54.244.73.117
    * IMPORTANT: "Allow agent forwarding" (ssh -A option)

13. At localhost
 $ eval `ssh-agent -s`
	
13. Log to private instance
	$ ssh ec2-user@PrivateInstancePrivateIPaddress
	$ ssh ec2-user@10.0.10.57
    * curl www.google.com [No way, no internet]

13.
	
Final Summary ...

   
The VPC has been configured with two subnets, a public subnet, and a private subnet. If a subnet's traffic is routed to an Internet gateway, the subnet is known as a public subnet. If a subnet doesn't have a route to the Internet gateway, the subnet is known as a private subnet. Instances launched in a private subnet do not have publicly routable internet addresses either.

Both subnets have a route table associated with them. Instances on the public subnet route internet traffic through the internet gateway. The private subnet routes internet traffic through the NAT instance.

Each instance launched in either subnet has it's own security group with inbound and outbound rules, to guarantee access is locked down to specific ports and protocols. For example, private instances on the private subnet allow any outbound traffic, but only allow SSH access from the bastion host. As another example, although the NAT instance is in the public subnet, it cannot be reached from the internet. It has an inbound rule that only grants instances from the private security group (private instances) access. Note that you might allow SSH access from your personal IP address or specific adminstrator's as well, or perhaps grant ICMP (ping) access during setup and troubleshooting efforts.

In addition to security groups, the private subnet also has a network access control list (NACL) as an added measure of security. NACL's allow for inbound and outbound rules, specified in a priority order. They are setup as implicit allow rules. If none of them are matched, all other traffic is denied. This private subnet NACL in this Lab allowed for SSH inbound traffic from the public subnet only. The outbound rules for the private NACL allowed for HTTP/S access to anywhere. This was proven to work in the Lab by performing operating system updates once the NAT instance was in place. The private route table sends the traffic from the instances in the private subnet to the NAT instance in the public subnet. The NAT instance sends the traffic to the Internet gateway for the VPC. The traffic is attributed to the Elastic IP address of the NAT instance. 