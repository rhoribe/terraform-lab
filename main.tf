provider "aws" {
  region = var.region
}

resource "random_id" "random_sufix" {
  byte_length = 4
}


module "vpc" {
  source            = "./modules/vpc"
  vpc_cidr          = local.vpc_config.vpc_cidr
  vpc_name          = local.vpc_config.vpc_name
  subnet_cidr       = local.vpc_config.subnet_cidr
  availability_zone = local.vpc_config.availability_zone
  subnet_name       = local.vpc_config.subnet_name
  internet_gw_name  = local.vpc_config.internet_gw_name
  route_table_name  = local.vpc_config.route_table_name
  route_table_cidr  = local.vpc_config.route_table_cidr
}

module "sg" {
  source         = "./modules/sg"
  sg_name        = local.sg_config.sg_name
  sg_description = local.sg_config.sg_description
  vpc_id         = module.vpc.vpc_id
  ingress        = local.sg_config.ingress
  egress         = local.sg_config.egress
  depends_on     = [module.vpc]
}

module "ec2" {
  source                      = "./modules/ec2"
  count                       = local.ec2_config.count
  ami                         = data.aws_ami.ubuntu.id
  instance_type               = local.ec2_config.instance_type
  instance_name               = "${local.ec2_config.instance_name}-${count.index}"
  associate_public_ip_address = local.ec2_config.associate_public_ip_address
  subnet_id                   = module.vpc.subnet_id
  vpc_security_group_ids      = [module.sg.sg_id]
  key_name                    = local.ec2_config.key_name
  depends_on                  = [module.vpc]
}

module "s3" {
  source     = "./modules/s3"
  count      = local.s3_config.count
  bucket     = "${local.s3_config.bucket_name}-${count.index}-${random_id.random_sufix.hex}"
  versioning = local.s3_config.versioning
}
