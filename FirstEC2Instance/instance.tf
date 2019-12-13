resource "aws_instance" "ec2-instance" {
  ami = "${lookup(var.aws_amis, var.aws_region)}"
  instance_type = "${var.instance_type}"
  subnet_id 					= "${var.subnet_id0}"
  #user_data     = "${data.template_file.crowdstrike.rendered}"
  vpc_security_group_ids 		= ["${var.security_group0}"]
  key_name 						= "${var.key_name}"
  source_dest_check 			= true
  monitoring        			= "${var.detailed_monitoring}"
    root_block_device {
        volume_type           	= "gp2"
        volume_size           	= "${var.ebs_volume_size0}"
        iops                  	= 150
        delete_on_termination 	= true
    }
    tags 	= { 
		    "Environment" 			= "${var.environment}"
        "Name" 					    = "${var.server_name}"
		    "Service"				    = "${var.service_name}"
        "Author" 				    = "${var.author}"
        "Description" 			= "${var.description}"
        "SnapshotSchedule" 	= "${var.snapshotschedule}"
	}
}

resource "aws_db_subnet_group" "rds-qa-subnet-group" {
  name       = "rds-qa-subnet"
  subnet_ids = ["${var.subnet_id0}", "${var.subnet_id1}"]

  tags = {
    Name = "My DB subnet group"
  }
}

resource "aws_db_instance" "default" {
  allocated_storage    = 20
  max_allocated_storage = 100
  db_subnet_group_name	= "${aws_db_subnet_group.rds-qa-subnet-group.name}"
  vpc_security_group_ids = ["${var.security_group_db}"]
  storage_type         = "gp2"
  engine               = "mysql"
  engine_version       = "5.7.17"
  instance_class       = "db.t2.micro"
  name                 = "mydb"
  username             = "root"
  password             = "admin123"
  skip_final_snapshot  = "true"
  parameter_group_name = "default.mysql5.7"
      tags 	= { 
		    "Environment" 			= "${var.environment}"
        "Name" 					    = "${var.server_name}"
		    "Service"				    = "${var.service_name}"
        "Author" 				    = "${var.author}"
        "Description" 			= "${var.description}"
        "SnapshotSchedule" 	= "${var.snapshotschedule}"
	}
}