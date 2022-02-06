provider "aws" {
  region = var.region
}

resource "random_string" "random" {
  length           = 3
  special          = false
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
  count         = local.ec2_config.count
  ami           = data.aws_ami.ubuntu.id
  instance_type = local.ec2_config.instance_type
  instance_name = "local.ec2_config.instance_name-${count.index}"
  subnet_id     = module.vpc.subnet_id
  depends_on    = [module.vpc]
}

module "s3" {
  source = "./modules/s3"
  count  = local.s3_config.count
  bucket = "local.s3_config.bucket_name-${count.index}-${random_string.random.result}"
}