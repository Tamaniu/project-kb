---
product: nexis
product-area: shared-storage
version: "2025.5.0"
release-date: 01/05/2025
doc-type: cloud-guide
source: pdf
confidentiality: public
date-added: 16/04/2026
status: current
---

Avid NEXIS | Cloud Storage (AWS Online EBS) Deployment Guide Version 2025.5.0 Legal Notice This information is for deployment and use of Avid-certified cloud solutions. For more information contact your salesperson or reseller.
Revision History Date Version Notes November 5, 2025 2025.5.0 Added the Recommended Network Configuration.
June 4, 2025 2025.5.0 Additional regions for deployment (Mexico and Milan). Support for 28.4M files for c5.4xlarge instances.
August 2023 2023.8.0 Support for local zones for Avid NEXIS | Cloud Storage (AWS Online EBS) December 2022 2022.12.0 Initial release of Avid NEXIS | Cloud Storage (AWS Online EBS) Contents Avid NEXIS Client Parameters 10 Online Mode Installation 11 Preparing the AWS Infrastructure 11 Option A: Configure Subnet for Jumphost/Bastion 12 Option B: Use a VPN if available. 12 Offline Mode Installation 12 Configure Subnet for Avid NEXIS without internet access 13 Configure Security Group for Avid NEXIS named Gateway SG 13 Add necessary AWS Endpoints to the Subnet 13 Option A: Configure Subnet for Jumphost/Bastion 14 Option B: Use a VPN if available. 14 Prepare CloudFormation Bucket 14 Public Mode Installation 14 Prepare AWS Infrastructure 14 Configure Subnet for Avid NEXIS with internet access 14 Configure a Security Group Named Shield SG 14 2 Deploying an Avid NEXIS | Cloud Storage (AWS Online EBS) 16 Creating the Avid NEXIS Stack 16 Creating the Media Pack Instance 17 Creating the Avid NEXIS Client 19 3 Setting up the Avid NEXIS System 22 Activating the License 22 Creating a New File System 24 Using SSL Certificates (Self-Signed or Trusted ) 24 Binding Media Packs and Creating Storage Groups 24 Recovering a Failed Media Pack 25 Identify the Failed Media Pack in the Avid NEXIS System 25 Identify the Failed Media Pack in AWS 26 4 Installing the Avid NEXIS Client Software 29 Installing the Client Software on Windows 29 Installing the Client Software on macOS 29 Installing the Client Software on Amazon Linux 33 Installing the Client Software on Amazon Linux 2023 34 Configuring an Amazon Linux 2023 Client 34 About This Document This document provides the steps and information required to execute the deployment of an Avid NEXIS Cloud Storage system in AWS using a CloudFormation template.
AWS CloudFormation is a service that helps automate the deployment of AWS resources.
At the time of writing this document Avid has the following CloudFormation templates available to deploy an Avid NEXIS Cloud Storage system, Avid NEXIS client, and Avid Media Composer in AWS:
1. A template that deploys an Avid NEXIS | Cloud Storage system. This includes one EBS instance for the
Avid NEXIS System Director and four EBS instances to serve as four Avid NEXIS Media Packs.
2. A template that adds an additional Avid NEXIS Media Pack to an existing Avid NEXIS Cloud Storage
system.
3. A template that deploys an EBS instance with Windows Server as the guest OS while also installing
the Avid NEXIS Client, Avid Media Composer software and the HP Anyware Client to access the EBS instance remotely.
This document will walk you through using the AWS CloudFormation Template for deploying an Avid NEXIS Cloud Storage system.
The procedures in this document assume:
1. You are familiar with navigating and using the AWS Management Console and CloudFormation
Templates.
2. You are familiar with using the Avid NEXIS Management Console.
3. You have a license key for Avid NEXIS Cloud Storage in AWS.
1 Overview of Deployment and Validation Process 1 Overview of Deployment and Validation Process As with any system design you should dedicate time for planning the overall solution.
Your outputs should be a documentation that includes details for the system design along with all the values, parameters, and naming conventions that you will need to properly deploy and configure the various compute resources and software components.
Use this guideline for planning:
1. Determine your security needs and decide how you will deploy the system: see "Determining Your
Security Needs" below.
2. Make sure you have the necessary access and licenses, and determine which of the supply regions
you will use. See "Prerequisites Common to All Deployment Modes" on page 8.
4. Deploy the instances you need, using the CloudFormation Template. See "Creating the Avid NEXIS
Stack" on page 1, "Creating the Media Pack Instance" on page 17, and and "Creating the Avid NEXIS Client" on page 19
5. Log into the Avid NEXIS Management Console to apply the software license, create the file system,
and bind the Media Packs. See "Setting up the Avid NEXIS System" on page 22.
6. Bind the Media Packs to the system and create a Storage Group and Workspaces.
7. If a Media Pack stack fails, replace it. See "Recovering a Failed Media Pack " on page 25.
8. Install the Avid NEXIS Client software. See "Installing the Avid NEXIS Client Software" on page 29
Determining Your Security Needs Public and private subnets offer different security levels and have their own pros and cons. Refer to the following table to evaluate your needs.
Mode Pros Cons Offline (Private Highly secure More configuration needed Subnet) Deploying in a private subnet without Deploying in a private subnet without internet internet access provides a high level access requires additional configuration to of security, as instances in the access AWS services, as you need to use VPC See "Offline private subnet are not directly endpoints or a VPC peering connection to access Mode accessible from the internet. the AWS API.
Installation" on Safer from attack Increased complexity page 12 Deploying in a private subnet without Deploying in a private subnet without internet internet access reduces the attack access can be more complex to set up and surface of your infrastructure, as maintain, as you need to configure the VPC there is no need to expose any ports endpoints or VPC peering connection, and ensure or services to the internet. that all required AWS services are available through those endpoints.
Cost effective Less flexible Deploying in a private subnet without Deploying in a private subnet without internet internet access can be more cost- access can limit the flexibility of your 1 Overview of Deployment and Validation Process Mode Pros Cons effective, as you don't need to pay infrastructure, as you may need to rely on AWS for a NAT Gateway or internet services that are not available through VPC gateway. endpoints or VPC peering connections.
Online (NAT Highly secure Lower performance Gateway) Deploying in a private subnet with a Deploying in a private subnet with a NAT NAT Gateway provides a high level of Gateway can be less performant than deploying security, as instances in the private in a public subnet with an Internet Gateway, as See "Online subnet are not directly accessible the NAT Gateway can introduce latency.
Mode from the internet.
Installation" on Cost effective More configuration page 11 Deploying in a private subnet with a Deploying in a private subnet with a NAT NAT Gateway is more cost-effective Gateway requires additional configuration for than deploying in a public subnet routing, as you need to configure the private with a NAT Gateway, as you don't subnet to route traffic through the NAT Gateway.
need to pay for a public IP address for each instance.
Less complex than VPN More complex than NAT Deploying in a private subnet with a Deploying in a private subnet with a NAT NAT Gateway is less complex than Gateway can be more complex than deploying in deploying in a private subnet with a a public subnet with a NAT Gateway, as you need VPN, as it requires less configuration to configure a bastion host or VPN for secure and maintenance. access to the instances.
Public (Internet Ease of use Less secure Gateway) Public subnets with an Internet Deploying in a public subnet can be less secure, Gateway provide easy access to the as instances are directly accessible from the internet, making it easy to deploy internet. Additional security measures such as See "Public applications that require internet Security Groups and Network ACLs are required Mode connectivity. to ensure the instances are properly protected.
Installation" on Reduced complexity Easier to attack page 14 Public subnets are less complex than Public subnets can be more prone to attacks, as private subnets, as they do not they are more exposed to the internet. This require additional configuration for requires more attention to security and NAT or VPN. monitoring.
Lower cost Deploying in a public subnet can be more cost-effective, as you don't need to pay for NAT or VPN gateway instances.
1 Overview of Deployment and Validation Process Prerequisites Common to All Deployment Modes You have at least FullAdminAccess AWS IAM Policy in your own account for creating an IAM User for
- Deployment.
- IAM User has full access to AWS Services: CloudFormation, EC2, CloudWatch and VPC.
- All the values for the Preflight for this deployment are known and captured in the Preflight Template.
- You have a valid AVID license.
- You have read-only access to the AMI Amazon YUM repository.
- You have read-only access to AWS S3 Buckets:
arn:aws:s3:::avid-deployments-* The wildcard (*) indicates one of the supported regions.
Supported Deployment Regions The following regions are supported for Avid NEXIS | Cloud Storage deployments using Amazon EBS, S3, and S3 Express One Zone.
> **Note:** AmazonS3ExpressOneZoneisavailableonlyinselectregions.Formoredetails,seetheAmazonS3
ExpressOneZoneAvailabilityZonesandRegionsdocumentation.
Europe North South Mexico Middle East Asia Pacific America (US America and Canada) eu-north-1 us-east-1 sa-east-1 mx-central-1 me-central-1 ap-east-1 (Stockholm) (N. Virginia) (São Paulo) (Mexico) (UAE) (Hong Kong) eu-west-1 us-east-2 ap-northeast-1 (Ireland) (Ohio) (Tokyo) eu-west-2 us-west-1 ap-northeast-2 (London) (N. California) (Seoul) eu-west-3 us-west-2 ap-southeast-1 (Paris) (Oregon) (Singapore) eu-central-1 ca-central-1 ap-southeast-2 (Frankfurt) (Central) (Sydney) eu-south-1 ca-west-1 ap-south-1 (Milan) (Calgary) (Mumbai) eu-south-2 (Spain) Recommended Network Configuration Jumbo frames are recommended for Avid NEXIS | Cloud Storage on AWS to avoid fragmented UDP traffic.
If jumbo frames are not available in the customer's network, lower MTUs (1500) can be used.
Fragmented UDP traffic is only supported on networks with single, deterministic path and consistent MTU, where intermediate devices forward IP fragments reliably.
Networks that can reorder or drop fragments are unsupported.
1 Overview of Deployment and Validation Process Required CloudFormation Parameters The following tables contain the parameters required to run the CloudFormation template. Some are free- text fields that you can type into (or copy/paste from another source), and others contain picklists with options to choose from.
Avid NEXIS System Parameters The following parameters are required to create an Avid NEXIS System Director stack and four Media Packs.
Parameters for Avid NEXIS Stack Parameter Description AWS Cloud Formation Stack Name Type a unique Stack Name, which can contain any combination of letters A-Z, numbers 0-9, and dashes (-).
Existing VPC Select an existing Virtual Private Cloud (VPC) ID from the list for the deployment.
Subnet ID Select an available subnet for the VPC that is associated with the selected VPC ID; otherwise, the deployment will fail.
Key Name Select an EC2 KeyPair to enable SSH access to instances.
Instance Type for System Director Select the System Director instance type.
Instance Type for Media Packs Select the Media Pack instance type.
This instance type applies to all four Media Packs created initially. Avid recommends using the same instance type if you use the template to create a spare Media Pack in case of a failure.
Tags Optional additional tags for the stack. (To identify the customer or contact name).
Enter as a comma-separated string; for example:
Owner=Name.Lastname,Team=Team,Phase=Phase1 Enable CloudWatch Logs Enable or disable logging of events and messages to CloudWatch Logs Cloudwatch Logs Retention Maximum time to store log events in days (for example, 14) System Name Specify the Avid NEXIS | Cloud Storage system name.
The name can be 3 to 21 English lowercase letters (a-z), numbers (0-9), and optionally contain a dash/hyphen character (-). The name must start with a letter or number and cannot end with a dash.
Admin Password Avid NEXIS Agent password.
This password is used for logging into the Agent and can also be used to log into the Management Console. This is intended behavior to provide an emergency method of logging in to the system. The password can be 8 to 32 symbols, and is not displayed as you type it, for security.
Size of Media Disk The size (in GB) of each Media Disk for Media Pack. Total size is Size of Media Disk * 40.
S3 Bucket (Avid internal use only) Enter a name for this S3 bucket.
Ignore the Permissions section containing the IAM Role options. This is not used in Avid’s deployment.
1 Overview of Deployment and Validation Process Avid NEXIS Client Parameters The following parameters are required to create an Avid NEXIS Client stack for use with the Avid NEXIS instance.
Parameters for Client Stack Parameter Description AWS Cloud Formation Stack Name Create a new, unique name for the Avid NEXIS client stack.
Subnet ID Select the subnet for the Avid NEXIS client stack.
Security Group IDs Select Security Groups to attach to EC2 instance.
Select the security group with the prefix that matches the name of the created server (such as 'System Name-Stack Name') and a suffix such as "-avid-client".
Key Name Name of an existing EC2 KeyPair to enable SSH access to instances. The Key should be the same for all Clients that will be added in future.
Assign Public IP Default is false. Set to tue to allow the client to be accessible on the Internet.
w This is a security risk.
Instance Type for Client Select Client instance type per customer order.
Drive Size for Client Drive Size for Client in Gb per customer order.
Tags Optional additional tags for the stack. (To identify the customer or contact name). Enter as a comma-separated string; for example:
Owner=Name.Lastname,Team=Team,Phase=Phase1 Enable CloudWatch Logs Enable or disable logging of events and messages to CloudWatch Logs Cloudwatch Logs Retention Maximum time to store log events in days (for example, 14) Install Media Composer Select whether or not to install Media Composer.
Media Composer Kit URL For customers using self-hosted Avid Media Composer provisioning.
Type the URL of the self-hosted Avid Media Composer Installer Kit. The URL must be accessible from the Client instance.
Install HP Anyware Select whether or not to install the HP Anyware Agent for Windows.
S3 Bucket (Avid internal use only) Enter a name for this S3 bucket.
Ignore the Permissions section containing the IAM Role options. This is not used in Avid’s deployment.
1 Overview of Deployment and Validation Process Online Mode Installation This section describes how to prepare the AWS infrastructure and establish internet access in the private subnet, and installing software on AWS using the online mode with a VPC, NAT gateway, and two subnets.
All instances in both subnets will have internet access.
AWS uses the internet for API calls to their services. The Avid NEXIS system also requires internet access. To support online installation, ensure that instances have internet access via the VPC, NAT gateway, and subnets. Also configure a VPN or Jumphost/Bastion with internet access.
Preparing the AWS Infrastructure To prepare the AWS infrastructure:
1. Create a public VPC subnet to host your NAT gateway:
a. Go to the Amazon VPC console, click on "Subnets" on the left-hand menu, and click on the "Create subnet" button.
b. Choose a VPC that you have already created, and choose an availability zone that is different from the one you chose for your private subnet.
> **Note:** WhencreatingasubnetforS3ExpressOneZone,selectazonefromthelistofsupported
AmazonS3ExpressOneZoneAvailabilityZonesandRegions.
c. In the "Subnet settings" section, give your subnet a name and a CIDR block that is different from the CIDR block of your private subnet. Make sure the CIDR block you choose falls within the CIDR block of your VPC.
d. Leave the "Auto-assign IPv4" setting to "Enable" so that your instances in this subnet will automatically receive a public IP address.
e. Click "Create subnet" to create your public subnet.
2. Create and attach an internet gateway to your VPC:
a. In the Amazon VPC console, click on "Internet Gateways" on the left-hand menu, and click on the "Create internet gateway" button.
b. Give your internet gateway a name and click "Create internet gateway".
c. Select your newly created internet gateway in the list, and click on the "Attach to VPC" button.
d. Choose the VPC that you have already created, and click "Attach internet gateway" to attach it to your VPC.
3. Create a custom route table for your public subnet with a route to the internet gateway:
a. In the Amazon VPC console, click on "Route Tables" on the left-hand menu, and click on the "Create route table" button.
b. Give your route table a name and select the VPC that you have already created.
c. Click on the "Routes" tab and then click on the "Edit routes" button.
d. Add a new route with a destination of "0.0.0.0/0" and a target of your newly created internet gateway.
e. Click "Save routes" to save your new route.
4. Create Security Group to allow all EC2 instances in a single subnet to communicate with each other:
1 Overview of Deployment and Validation Process a. Create a new security group with no inbound or outbound rules.
b. Select all instances in the subnet.
c. Add the new security group to the instances without removing any existing security groups.
The instances in the subnet should now be able to communicate with each other without any restrictions on ports.
5. Create a public NAT gateway then create and associate your new or existing Elastic IP address:
a. In the Amazon VPC console, click on "Nat Gateways" on the left-hand menu, and click on the "Create NAT gateway" button.
b. Choose the public subnet that you have created, and choose the Elastic IP address that you want to associate with your NAT gateway.
c. Click "Create NAT gateway" to create your NAT gateway and associate your Elastic IP address.
6. Update the route table of your private VPC subnet to point internet traffic to your NAT gateway:
a. Go to the Amazon VPC console.
b. In the navigation pane, choose "Route Tables".
c. Select the route table associated with the private subnet where you want to enable internet access.
d. Choose the "Routes" tab in the bottom pane.
e. Choose "Edit routes", and then choose "Add another route".
f. In the "Destination" field, enter 0.0.0.0/0.
g. In the "Target" field, choose "NAT gateway", and then choose the NAT gateway that you created earlier.
h. Choose "Save routes".
Option A: Configure Subnet for Jumphost/Bastion
1. For chosen VPC and chosen availability zone where you created a Private Subnet, add a new Subnet
and name it Public.
2. Ensure you select the default routing table for Public and this routing table has ruled for 0.0.0.0/0
from IGW (add one if you do not have one).
Option B: Use a VPN if available.
Setting up a VPN is not covered in this document.
Offline Mode Installation By design, AWS uses the internet for API calls to their services. Also, without internet access you can’t reach Avid NEXIS, so you need to have a VPN or Jumphost/Bastion with internet access. In this case, follow these steps:
1. Configure Subnet for Avid NEXIS without internet access
2. Add necessary AWS Endpoints to this Subnet
3. Configure Subnet for Jumphost/Bastion
1 Overview of Deployment and Validation Process Configure Subnet for Avid NEXIS without internet access
1. Create a new VPC or select an existing one and ensure you allow using private DNS names in
settings.
2. Add a new Subnet for your availability zone and name it Private.
> **Note:** WhencreatingasubnetforS3Express,selectazonefromthelistofsupportedS3ExpressOne
ZoneAvailabilityZonesandRegions.
3. Add a new Routing Table named Local for Private Subnet and ensure this route has only local rule (i.e.
no NAT/GW).
Configure Security Group for Avid NEXIS named Gateway SG
1. Add rule all traffic inbound rules from 0.0.0.0/0
2. Add rule all traffic outbound rules to 0.0.0.0/0
> **Note:** YouonlyneedtocreatethisopenSecurityGroupforendpoints;don’tattachittoinstances.
Add necessary AWS Endpoints to the Subnet Create new Endpoints with the following properties:
Name Type Service Name Action CloudFormation interface com.amazonaws.*.cloudformation Attach to Gateway SG CloudWatch interface com.amazonaws.*.monitoring Attach to Gateway SG EC2 interface com.amazonaws.*.ec2 Attach to Gateway SG Monitoring interface com.amazonaws.*.logs Attach to Gateway SG S3 Gateway com.amazonaws.*.s3 Attach to local routing tables S3express Gateway com.amazonaws.*.s3express Attach to local routing tables connecttoinstance-ssm interface com.amazonaws.*.ssm Attach to Gateway SG ec2messages interface com.amazonaws.*.ec2messages Attach to Gateway SG ssmmessages interface com.amazonaws.*.ssmmessages Attach to Gateway SG STS interface com.amazonaws.*.sts Attach to Gateway SG 1 Overview of Deployment and Validation Process Option A: Configure Subnet for Jumphost/Bastion
1. For chosen VPC and chosen availability zone where you created a Private Subnet, add a new Subnet
and name it Public.
2. Ensure you select the default routing table for Public and this routing table has ruled for 0.0.0.0/0
from IGW (add one if you do not have one).
Option B: Use a VPN if available.
Setting up a VPN is not covered in this document.
Prepare CloudFormation Bucket By design, only the regional bucket is available in offline mode. Create an S3 bucket in the same region as the chosen VPC, and make it public. Then do the following:
1. In the Permissions tab, set the Bucket Policy as follows, where xxx is the name of your S3 bucket, and
the path matches your public scheme (for example, /AvidNEXIS*/*):
"Effect": "Allow", 7 "Principal": "*", 8 "Action": "s3:GetObject", 9 "Resource":
[ 10 "arn:aws:s3:::xxx/AvidNEXIS*/*", 11 "arn:aws:s3:::
xxx/*AWSPrivatePreview*/*" 12 ] 13 } 14 ] 15}
2. Copy the necessary assets from the main bucket to the regional:
1aws s3 sync s3://river-deployments-public/AvidNEXIS_ River/Release/nnns3://XXX/AvidNEXIS_River/Release/nnn Public Mode Installation This section describes installing software on AWS in public mode, using a VPC with an Internet Gateway and a single subnet. To ensure security, create an additional "Shield" Security Group to cover instances for Access List only.
Prepare AWS Infrastructure By default, AWS uses the internet for API calls to their services. This section covers creating a VPC with internet access.
Configure Subnet for Avid NEXIS with internet access
1. Create a new VPC or select an existing one, and ensure you allow using private DNS names in
settings.
2. Add a new Subnet to the VPC and name it "Public".
> **Note:** WhencreatingasubnetforS3Express,selectazonefromthelistofsupportedS3ExpressOne
ZoneAvailabilityZonesandRegions.
3. Add a new Routing Table named "Public" for the "Public" Subnet and ensure it has a rule for
0.0.0.0/0 pointing to the Internet Gateway.
Configure a Security Group Named Shield SG
1. Create a new Security Group called "Shield SG".
2. Add inbound rules to the Shield SG to allow only the necessary traffic to reach the instances.
3. Add outbound rules to the Shield SG to allow traffic from the instances only to the necessary
1 Overview of Deployment and Validation Process destinations.
4. Attach the Shield SG to the instances that require access from internet
Once the AWS infrastructure is ready, you can proceed with the deployment of the software to the instances.
2 Deploying an Avid NEXIS | Cloud Storage (AWS Online EBS) 2 Deploying an Avid NEXIS | Cloud Storage (AWS Online EBS) Deploying an Avid NEXIS | Cloud Storage system includes the following procedures:
1. Create the Avid NEXIS System Director stack in the CloudFormation templates. This also creates four
Media Packs.
2. Optionally create a spare Media Pack stack to use in case one of the original four fails.
3. Create the Avid NEXIS client stack in the CloudFormation templates (optional).
4. Log into the Avid NEXIS Management Console and apply the license and create the file system.
5. Bind the Media Packs and create a Storage Group, then create Workspaces for your client users
(editors, etc.) to work with media files.
6. Install the Avid NEXIS Client software. See "Installing the Avid NEXIS Client Software" on page 29
Creating the Avid NEXIS Stack The template creates an Avid NEXIS System Director and four Media Packs, which are required to support media (Workspace) mirroring.
To create the Avid NEXIS Cloud Storage system:
1. Open a browser window and log into your AWS Management Console.
2. Open another browser window or tab and go to the Avid in AWS Landing Page that contains the links
to launch the CloudFormation Templates.
The landing page contains a section for creating the Avid NEXIS.
3. Click “Create stack.”
The Quick create stack template opens in a new browser tab.
4. On the top of the AWS Services page, select a region from the list.
Note your region here: ________________________________________
5. In the Stack name field, enter a unique Stack Name.
Note your Stack Name here: ________________________________________
6. In the Parameters section do the following:
a. Choose the VPC ID for the deployment that was created to host Avid NEXIS Cloud Storage in AWS.
Note your VPC ID here: ________________________________________ b. Choose the Subnet ID for the public subnet that was created to host Avid NEXIS Cloud Storage in AWS. This Subnet ID must match the chosen VPC ID.
Note your subnet ID here: ________________________________________ c. Select the appropriate Key Name from the drop down.
Note your key name here: ________________________________________ 2 Deploying an Avid NEXIS | Cloud Storage (AWS Online EBS) g YouwillneedaccesstoacopyoftheprivatekeylatertoconnectwithSSHforEC2as ec2-user.
d. Select the instance type for the System Director.
Note your instance type here: ________________________________________ e. Select the instance type for the Media Packs.
Note your instance type here: ________________________________________ f. Optionally enter Additional Tags that will help you filter and find this resource. Enter tags in the format Object=Field1,Field2.
Note your tags here: ______________________________________________________________ ________________________________________________________________________________ ________________________________________________________________________________ ___ g AvidrecommendsusingatagthatindicatesthisisAvidNEXISCloudStorageinAWS.
g. Select “true” for Enable CloudWatch Logs.
h. In the CloudWatch Logs Retention field enter the number of days to keep the logs.
Note your retention days here: ________________________________________
7. In the Options section do the following:
a. Enter a name for the Avid NEXIS shared-storage system.
Note your system name here: ________________________________________ b. Enter and confirm a password for the Avid NEXIS system.
c. Enter a size for the Media Disks in Gb (default is 512).
8. Enter the appropriate S3 Bucket Base Name.
Note the bucket name here: ________________________________________
9. IgnorethePermissionssection;thisisnotusedinAvid’sdeployment.
10. Click the checkboxes to acknowledge the resource capabilities.
11. Click Create Stack.
(IgnoretheCreateChangeSetbutton;thisisnotusedinAvid’sdeployment.) You will be redirected to the Stack Events page where you can monitor the status of the deployment process, which takes 15-25 minutes to complete.
Creating the Media Pack Instance The Avid NEXIS stack template ("Creating the Avid NEXIS Stack" on the previous page) creates an Avid NEXIS system and four Media Packs. You can create one additional Media Pack to replace one of the original four if it fails.
To create a Media Pack instance:
1. Open a browser window and log into your AWS Management Console.
2. Open another browser window or tab and go to the Avid in AWS Landing Page that contains the links
to launch the CloudFormation Templates.
The landing page contains a section for creating the Avid NEXIS and a section for creating the Media Pack, as follows:
2 Deploying an Avid NEXIS | Cloud Storage (AWS Online EBS)
3. Click Create stack.
The Quick create stack template opens in a new browser tab.
4. On the top of the AWS Services page, select a region from the list.
Note your region here: ________________________________________
5. In the Stack name field, enter a unique Stack Name.
Note your Stack Name here: ________________________________________
6. In the Parameters section, do the following:
a. Choose the Subnet ID for the public subnet that was created to host Avid NEXIS Cloud Storage in AWS. This Subnet ID must match the chosen VPC ID.
Note your subnet ID here: ________________________________________ b. Choose the appropriate Security Group ID.
Note your security group ID here: ________________________________________ c. Select the appropriate Key Name from the drop down.
Note your key name here: ________________________________________ g YouwillneedaccesstoacopyoftheprivatekeylatertoconnectwithSSHforEC2as ec2-user.
d. Select the instance type for the Media Pack.
Note your instance type here: ________________________________________ e. Optionally enter Additional Tags that will help you filter and find this resource. Enter tags in the format Object=Field1,Field2.
2 Deploying an Avid NEXIS | Cloud Storage (AWS Online EBS) Note your tags here: ______________________________________________________________ ________________________________________________________________________________ ________________________________________________________________________________ ___ g AvidrecommendsusingatagthatindicatesthisisAvidNEXISCloudStorageinAWS.
f. Select “true” for Enable CloudWatch Logs.
g. In the CloudWatch Logs Retention field enter the number of days to keep the logs.
Note your retention days here: ________________________________________
7. In the Options section do the following:
a. Type the name of the Avid NEXIS stack to which this Media Pack instance will be linked.
Note your system name here: ________________________________________ b. Enter and confirm a password to manage the Media Pack instance.
c. Enter the size of the Media Disk in Gb (default is 512).
Note your Media Disk size here: ________________________________________
8. Enter the appropriate S3 Bucket Base Name.
Note the bucket name here: ________________________________________
9. IgnorethePermissionssection;thisdoesnotapplytoAvid’sdeployment.
10. Select the options to acknowledge the AWS CloudFormation statements.
11. Click Create Stack.
(IgnoretheCreateChangeSetbutton;thisisnotusedinAvid’sdeployment.) You will be redirected to the Stack Events page where you can monitor the status of the deployment process, which takes 15-25 minutes to complete.
Creating the Avid NEXIS Client The Client template creates a virtual editing workstation with the Avid NEXIS Client Manager installed, and lets you optionally install Media Composer and the HP Anyware file transfer agent.
To create the Avid NEXIS client:
1. Open a browser window and log into your AWS Management Console.
2. Open another browser window or tab and go to the Avid in AWS Landing Page that contains the links
to launch the CloudFormation Templates.
The landing page contains a section for creating the Avid NEXIS and a section for creating the client.
See "Required CloudFormation Parameters" on page 9 for the list of parameters.
3. Click Create stack.
The Quick create stack template opens in a new browser tab.
4. On the top of the AWS Services page, select a region from the list.
Select the same region where you created the Avid NEXIS stack.
Note your region here: ________________________________________
5. In the Stack Name field, enter a unique stack name for the client.
2 Deploying an Avid NEXIS | Cloud Storage (AWS Online EBS) Note your Stack Name here: ________________________________________
6. In the Parameters section, do the following:
a. Choose the Subnet ID for the client. This Subnet ID must match the subnet ID for the Avid NEXIS stack.
Note your subnet ID here: ________________________________________ b. Choose the appropriate Security Group ID.
Note your Security Group ID here: ________________________________________ c. Select the appropriate Key Name from the drop down.
g YouwillneedaccesstoacopyoftheprivatekeylatertoconnectwithSSHforEC2as ec2-user.
Note your Key Name here: ________________________________________ d. Choose whether to assign a public IP address to the client instance. Default is false.
Note your choice here: ________________________________________ e. Select the instance type for the client.
Note your instance type here: ________________________________________ f. Enter a disk size for the client or accept the default (100Gb).
Note your disk size here: ________________________________________ g Thedefaultsizeisrecommended.Creatingalargersizewillcostmore.
g. Optionally enter Additional Tags that will help you filter and find this resource. Enter tags in the format Object=Field1,Field2.
Note your tags here: ______________________________________________________________ ________________________________________________________________________________ ________________________________________________________________________________ ___ g AvidrecommendsusingatagthatindicatesthisisAvidNEXISCloudStorageinAWS.
h. Select “true” for Enable CloudWatch Logs.
i. In the CloudWatch Logs Retention field, enter the number of days to keep the logs.
Note your retention days here: ________________________________________
7. In the Avid Client Options section do the following:
a. If applicable, enter the URL where the Client installer kit is located.
Note the Client Installer URL here: ________________________________________ b. Choose whether or not to install Media Composer on the client.
Circle your choice here: T F c. If applicable, enter the URL where the Media Composer kit is located.
Note the Media Composer installer URL here: ________________________________________ d. Choose whether or not to install the HP Anyware Agent on the client.
Circle your choice here: T F
8. Enter the appropriate S3 Bucket Base Name.
Note the bucket name here: ________________________________________ 2 Deploying an Avid NEXIS | Cloud Storage (AWS Online EBS)
9. IgnorethePermissionssection;thisisnotusedinAvid’sdeployment.
10. Click the checkboxes to acknowledge the resource capabilities.
11. Click Create Stack.
(IgnoretheCreateChangeSetbutton;thisisnotusedinAvid’sdeployment.) You will be redirected to the Stack Events page where you can monitor the status of the deployment process, which takes 15-25 minutes to complete.
3 Setting up the Avid NEXIS System 3 Setting up the Avid NEXIS System After creating the Avid NEXIS Cloud Storage system and Media Pack stacks, follow these steps to set up the Avid NEXIS System:
1. Activate the license
2. Create a new file system
3. Use a Self-signed or Trusted PKIX certificate
4. Bind the Media Pack
Activating the License
1. In the AWS Management Console, find the IP address of the Avid NEXIS system.
Go to the EC2 Running Instances page and enter the name of your System Director in the search field.
2. Click the checkbox next to the Instance Name.
3. Copy the IP address and paste it into a browser window.
4. Log in as administrator and enter the password you created during the stack creation.
5. Click the License tab and select a method to activate your key: Online for Public and Online modes
and Offline for Offline mode.
3 Setting up the Avid NEXIS System
6. For Online activation, type or paste your Activation ID and System ID into the respective fields then
click Activate.
For Offline activation, enter the Activation ID, System ID, and upload a License File. To generate a License File, visit https://my.avid.com/products/indirectactivation.
7. After your license is activated, you will be logged out from the Avid NEXIS Management Console. Wait
a few minutes before trying to log in again.
8. When your license is activated, the License page will display its information.
3 Setting up the Avid NEXIS System Creating a New File System An Avid NEXIS file system does not exist in the initial configuration; you need to create a new file system first to set up the storage and make the space usable.
Creating a new file system is intended for initial setups only. Performing this action on an existing system will result in data loss.
1. Open a browser and log in to the Avid NEXIS Management Console using the IP address of the Avid
NEXIS system.
2. Enter the administrator credentials.
3. Go to System> Settings page.
4. Under the File System tab, select Create New File System from the dropdown menu.
5. Click Submit.
6. A warning message will appear. Click OK to proceed.
Wait for a few minutes while the file system is created.
7. Log in again using the administrator and a blank password.
8. Set a new password after creating the file system.
Go to Administrator > Change password in the Application Menu at the top right of the screen.
For more information, see the "Changing the Default System Passwords" section in the AvidNEXIS AdministrationGuideavailable in the Avid NEXIS Documentation Knowledge Base.
Using SSL Certificates (Self-Signed or Trusted ) Starting with version 2024.5.0, Avid NEXIS supports the use of either a self-signed certificate or a trusted PKIX certificate.
When using a self-signed certificate, the browser prompts a 'Not secure' warning message when connecting to the Management Console. This warning does not affect system functionality. It only indicates that the connection to the site is insecure. You can accept the certificate to proceed with the connection.
> **Note:** AvidNEXISusesaself-signedcertificatebydefault.
When using a trusted PKIX certificate, the URLs for an Avid NEXIS system are validated, and no warning message appears when connecting to the Management Console.
For more information on applying self-signed certificates and trusted certificates, refer to the 'Using a Trusted Certificate' chapter in the AvidNEXISAdministrationGuide, available in the Avid NEXIS Documentation Knowledge Base.
Binding Media Packs and Creating Storage Groups When your Avid NEXIS system has a file system, you can bind the Media Packs and then create a Storage Group and Workspaces.
1. Click the Storage tab, then Media Packs, and select the Media Packs to bind.
2. Click the Bind icon next to each Media Pack then click Save.
3. Choose the appropriate option for binding the Media Pack to the file system based on your license.
3 Setting up the Avid NEXIS System
4. Click the Storage Groups tab and then click Add (plus sign).
5. Enter a name for the Storage Group, select one or more Media Packs (as applicable to your
deployment), click the plus sign, then click Save.
The Storage Group is created.
6. Click the Workspaces tab and click Add (plus sign) to create a new Workspace.
7. Enter a name and size for the Workspace (default is 200GB), and click Save.
The Workspace is created.
8. Use the Avid NEXIS Client Manager to mount the Workspace. See "Installing the Avid NEXIS Client
Software" on page 29 Recovering a Failed Media Pack By design, an Avid NEXIS | Cloud Storage (AWS Online EBS) system requires four (4) Media Packs. If one fails, you must deploy a new Media Pack stack and add it to the Avid NEXIS system, so that the system can use it to replace the failed one.
The new Media Pack stack must have a unique name, but must use the same VPC ID as the original SD stack.
The overall process for replacing a failed Media Pack is as follows:
1. Identify the Failed Media Pack in the Avid NEXIS System
2. Identify the Failed Media Pack in AWS
3. Create a New Media Pack Stack
4. Add the New Media Pack to the Avid NEXIS System
5. Remove the Failed Media Pack from the Avid NEXIS System
g OpentwobrowsertabssoyoucanswitchbetweentheAWSconsoleandtheAvidNEXISManagement Consoleforthefollowingsteps.
Identify the Failed Media Pack in the Avid NEXIS System
1. Open a browser tab and log into the Avid NEXIS Management Console. On the Dashboard, make a
note of the Host name (this is also the SD name in the AWS Console).
2. Click Storage, then Media Packs.
A Media Pack with a yellow, orange, or red icon indicates a problem. The Status field might display 3 Setting up the Avid NEXIS System the status “No Connection - Offline.”
3. Make a note of the Media Pack name (for example, MP003).
Identify the Failed Media Pack in AWS
1. Open the AWS Console, go to the EC2/Instances in your Region and find your SD instance in the list.
(Your SD instance has the same name as the Host name in the Management Console).
The Details tab of your SD shows the VPC ID.
2. Scroll down the Details page to find the Key Pair ID.
3 Setting up the Avid NEXIS System
3. Click the Networking tab to see the Subnet ID.
Create a New Media Pack Stack
1. On the Landing Page, scroll down to the section Add Media Pack to Avid NEXIS | Cloud Storage (AWS
Online EBS) System, and click Create Stack.
2. Enter the same SD name as the one you identified earlier. For example, if the Media Pack belongs to
an Avid NEXIS system with a host name of sd-klaaws, type sd-klaaws for the System name.
3. (Optional) Create a password (can be the same as the Avid administrator password).
4. Select the same subnet as the Avid NEXIS system with the failed MP.
5. Select the same Security group as the Avid NEXIS system with the failed MP.
Add the New Media Pack to Avid NEXIS | Cloud Storage (AWS Online EBS)
1. In the browser tab running the Management Console, refresh the Media Packs page. If correctly
deployed, the new Media Pack is displayed as unbound.
2. Select the new Media Pack and click Bind, then Save.
3. In the Confirmation message, click OK.
4. Click Storage, then Storage Groups.
5. Double-click the Storage Group with the failed Media Pack.
6. Select the new Media Pack, click Add, then click Save.
A redistribution begins, to distribute the Workspaces across all the Media Packs, including the new one. The Workspaces remain usable during redistribution.
3 Setting up the Avid NEXIS System
7. (Optional) To check the progress of redistribution, click Workspaces. When the redistribution is
complete, the Workspace icons become green. (You can also check the progress by clicking Monitoring, then Redistribution.) Remove the Failed Media Pack from Avid NEXIS | Cloud Storage (AWS Online EBS)
1. Click Storage, then Storage Groups.
2. Double-click the Storage Group with the failed Media Pack.
3. Select the failed Media Pack, click Remove, then click Save.
Another redistribution begins, to move all the Workspaces onto the remaining Media Packs in the Storage Group. The Workspaces remain usable during redistribution.
4. (Optional) To check the progress of redistribution, click Workspaces. When the redistribution is
complete, the Workspace icons become green. (You can also check the progress by clicking Monitoring, then Redistribution.) 4 Installing the Avid NEXIS Client Software 4 Installing the Avid NEXIS Client Software This guide outlines the installation process for the Avid NEXIS Client software on Windows, Macs, and Amazon Linux, enabling access to the Avid NEXIS | Cloud Storage system on AWS.
Download the installer from the Avid NEXIS Management Console Installers page or from the \AvidNEXISClientInstallers folder in the Avid NEXIS software kit.
Installing the Client Software on Windows For Cloud deployments on Windows, the Avid NEXIS Client software is installed automatically as part of the deployment.
If you need to upgrade your client software, follow the steps in the Avid NEXIS Client Manager Installation and User’s Guide, available on the Avid NEXIS Documentation Knowledge Base.
Installing the Client Software on macOS
> **Note:** ThefollowinginstructionscovertheinstallationprocessonmacOSSonoma14.5.
To install the Avid NEXIS Client Manager on Mac:
1. Double-click the AvidNEXISClient_for_MacOSX_n.0.0-nnnnn.dmg file.
2. Double-click the Install Avid NEXIS Client.pkg to run the installer.
3. Follow the on-screen instructions:
a. On the welcome screen, click Continue.
4 Installing the Avid NEXIS Client Software b. In the Software License Agreement screen, click Continue.
c. Click the Agree button to confirm that you have read and agree to the terms of the software license agreement.
d. Select the location where you want to install the Avid NEXIS Client and click Continue.
4 Installing the Avid NEXIS Client Software e. Click Install to start the installation.
f. Enter the password, then click Install Software.
g. The installation starts.
h. In the pop-up window, click Open System Settings.
4 Installing the Avid NEXIS Client Software Or click OK, go to the System Settings, and then click Privacy & Security in the sidebar.
i. Click the Allow button to proceed with the setup and installation.
j. Enter the computer password to modify the system settings.
k. A popup window prompts you to restart. Click Not Now and wait for the Restart button to appear on the Privacy & Security page.
l. Click the Restart button on the Privacy & Security page.
4 Installing the Avid NEXIS Client Software
4. After the system reboot, go to the Applications folder, and the Avid NEXIS folder containing the Avid
NEXIS Client Manager will be available.
Installing the Client Software on Amazon Linux Installing the Avid NEXIS Client Manager on Amazon Linux is a two-part process that involves (1) installing the software and (2) configuring the client using the command line interface.
The following instructions covers the installation process on Amazon Linux 2 (AL2).
> **Note:** AL2willreachEndofLife(EOL)onJune30,2026.
To install the Avid NEXIS Client Manager on AL2:
1. Copy and save the installer to the AL2 client.
The installer name is AvidNEXISClient_for_amzn2_n.0.0-nnnn.bin.
2. Open the Terminal application and connect to the VM.
3. Type the following to change the permission on the installer file, then press Enter.
sudo chmod +x AvidNEXISClient_for_amzn2_n.0.0-nnnn.bin
4. Type the following to start the installation, then press Enter.
sudo ./AvidNEXISClient_for_amzn2_n.0.0-nnnn.bin
5. Installation complete. Proceed to configuring the client.
/etc/AvidRegistry After the installation, edit the file to add a remote host, configure the network interface, and set the client type.
To configure the AL2 client:
1. Type the following to edit the /etc/AvidRegistry file
sudo nano /etc/AvidRegistry
2. In the AvidFos\Paremeters\RemoteSystemDirectors line, enter the IP addresses OR host
names of the controllers in the engine that runs the System Director or the System Director Appliance.
AvidFos\Parameters\UsrvTransport\Hires,
3. In the enter the numerical value for client type
(client resolution).
The recommended client types are:
4 Installing the Avid NEXIS Client Software
- 4 UltraHigh (10Gb clients)
- 5 40Gbit clients
4. In the AvidFos\Parameters\UsrvTransport\forceNICsToMin, enter the network speed (in
megabytes).
/etc/AvidRegistry
5. Exit and Save the file.
sudo reboot.
6. Reboot the AL2 client by typing
Installing the Client Software on Amazon Linux 2023 Amazon Linux 2023 (AL2023) is the new generation of Amazon Linux from AWS.
Installing the Avid NEXIS Client Manager on Amazon Linux 2023 is a two-part process that involves (1) installing the software and (2) configuring the client using the command line interface.
To install the Avid NEXIS Client Manager on AL2023:
1. Copy and save the installer to the AL2023 client.
AvidNEXISClient_for_amzn2023_n.0.0-nnnn.bin.
The installer name is
2. Open the Terminal application and connect to the VM.
3. Type the following to change the permission on the installer file, then press Enter.
sudo chmod +x AvidNEXISClient_for_amzn2023_n.0.0-nnnn.bin
4. Type the following to start the installation, then press Enter.
sudo ./AvidNEXISClient_for_amzn2023_n.0.0-nnnn.bin
5. Installation complete. Proceed to configuring the client.
Configuring an Amazon Linux 2023 Client After the installation, edit the /etc/AvidRegistry file to add a remote host, configure the network interface, and set the client type.
To configure the AL2023 client:
1. Type the following to edit the /etc/AvidRegistry file
sudo nano /etc/AvidRegistry
2. In the AvidFos\Paremeters\RemoteSystemDirectors line, enter the IP addresses OR host
names of the controllers in the engine that runs the System Director or the System Director Appliance.
3. In the AvidFos\Parameters\UsrvTransport\Hires, enter the numerical value for client type
(client resolution).
The recommended client types are:
- 4 UltraHigh (10Gb clients)
- 5 40Gbit clients
4. In the AvidFos\Parameters\UsrvTransport\forceNICsToMin, enter the network speed (in
megabytes).
4 Installing the Avid NEXIS Client Software
5. Exit and Save the /etc/AvidRegistry file.
6. Reboot the AL2023 client by typing
sudo reboot