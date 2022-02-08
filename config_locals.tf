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
  efs_config = {
    creation_token = "awslab"
    encrypted      = true
    kms_key_id     = "arn:aws:kms:us-east-1:406697556424:key/a1aa280e-eb54-42d0-a104-1af70fc4f2b8"
    name           = "awslab"
  }
  ec2_config = {
    instance_type               = "t2.micro"
    instance_name               = "aws-lab"
    key_name                    = "aws-lab"
    associate_public_ip_address = true
    count                       = 1
    encrypted                   = true
    kms_key_id                  = "alias/awslab"
    volume_type                 = "gp2"
    volume_size                 = 8
  }
  s3_config = {
    bucket_name = "awslab"
    versioning  = true
    count       = 1
  }
}