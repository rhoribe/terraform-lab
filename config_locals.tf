locals {
  vpc_config = {
    vpc_cidr          = "10.0.0.0/16"
    subnet_cidr       = "10.0.0.0/24"
    vpc_name          = "aws-lab"
    subnet_name       = "aws-lab-subnet"
    availability_zone = "us-east-1a"
    internet_gw_name  = "aws-lab-gw"
    route_table_name  = "aws-lab-rt"
    route_table_cidr  = "0.0.0.0/0"
  }
  ec2_config = {
    instance_type               = "t2.micro"
    instance_name               = "aws-lab"
    key_name                    = "aws-lab"
    associate_public_ip_address = true
    count                       = 1
  }
  s3_config = {
    bucket_name = "awslab"
    versioning = true
    count       = 1
  }
}