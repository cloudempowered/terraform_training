variable "credentials_file" {

}
variable "credentials_profile" {
  
}
variable "aws_region" {

}

variable "service_name" {
  
}
variable "server_name" {
  
}
variable "environment" {
  
}

variable "author" {
}
variable "description" {}
variable "snapshotschedule" {}

variable "key_name" {}
variable "ebs_volume_size0" {}
variable "security_group0" {}
#variable "security_group1" {}
variable "instance_type" {}

#Ubuntu_16.04 Server GOLD Image - Informa_Gold_Image_Ubuntu_16.04_201707 - For APPE Account
variable "aws_amis" {
    default = {
        eu-west-1 = "ami-1b719362"#"ami-0737ec3d03742d38c"
        us-east-1 = "ami-00ed5209571fe4f57"
    }
}

#Network
variable "subnet_id0" {}
variable "subnet_id1" {}
variable "vpc_id" {}

variable "detailed_monitoring" {}
variable "security_group_db" {
  
}


