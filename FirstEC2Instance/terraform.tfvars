#credentials 
credentials_file		= "C:/Users/vikas.arora/.aws/appe/credentials"
credentials_profile		= "default"
aws_region				= "eu-west-1"

#EC2 Server
#keep those short, some resource have maximum name lenght of 32 char.
service_name			= "Terraform_training"			#Service or project or application name
server_name			    = "Terraform_training"			#Follow the server naming convention - http://confluence.taylorandfrancis.com/display/DOP/Server+Naming+Convention 
environment				= "dev"							#Specify the environment dev/qa/uat/prod
author					= "Vikas Arora"					#Person's name who is responsible/creater of this server.
description				= "Terraform Training Server"		#Server Description 
snapshotschedule		= "disable"

#EC2
key_name				= "kp-appe-gt-dev"				#change the Key_Pair name according to environment. DEV=dev_ssh, UAT=uat_ssh, PROD=Prod_ssh
instance_type			= "t3.medium"			#Instance Type, for Testing use "t2.nano"
detailed_monitoring		= "false"
ebs_volume_size0		= "30"					#Specify the size of Root Volume
security_group0			= "sg-18862261"	 		#Security groups for EC2 Instance
#security_group1			= "sg-5c79af3a"	 		#Optional, If not required comment/remove this and upadte stack.tf file accordingly (line no.6)
#security_group2			= "sg-54bd3f32"	 		#Optional, If not required comment/remove this and upadte stack.tf file accordingly (line no.6)
#ec2_sg1					= "AP_Server_Windows_Management_DEV"
security_group_db       = "sg-9b8420e2"

#Network
subnet_id0				= "subnet-2d603675"   	#Subnet ID to launch EC2 server
subnet_id1				= "subnet-32bcb656"   	#Subnet ID to launch EC2 server
vpc_id					= "vpc-fae1e19e"
