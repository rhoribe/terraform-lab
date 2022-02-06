provider "aws" {
  region = var.region
}

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
  }
  s3_config = {
    bucket_name = "aws-lab-bucket"
  }
}

module "vpc" {
  source            = "./modules/vpc"
  vpc_cidr          = local.vpc_config.vpc_cidr
  vpc_name          = local.vpc_config.vpc_name
  subnet_cidr       = local.vpc_config.subnet_cidr
  availability_zone = local.vpc_config.availability_zone
  subnet_name       = local.vpc_config.subnet_name
}

module "ec2" {
  source        = "./modules/ec2"
  ami           = data.aws_ami.ubuntu.id
  instance_type = local.ec2_config.instance_type
  instance_name = local.ec2_config.instance_name
  subnet_id     = module.vpc.subnet_id
  depends_on    = [module.vpc]
}

module "s3" {
  source = "./modules/s3"
  bucket = local.s3_config.bucket_name
}