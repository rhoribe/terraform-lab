
locals {
  vpc_config = {
    vpc_cidr          = "10.0.0.0/16"
    subnet_cidr       = "10.0.0.0/24"
    vpc_name          = "aws-lab"
    subnet_name       = "aws-lab-subnet"
    availability_zone = "us-east-1a"
  }
  ec2_config = {
    instance_type = "t2.micro"
    instance_name = "aws-lab"
    count         = 1
  }
  s3_config = {
    bucket_name = "awslab"
    count       = 1
  }
}