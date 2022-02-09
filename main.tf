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

module "efs" {
  source                 = "./modules/efs"
  creation_token         = local.efs_config.creation_token
  availability_zone_name = module.vpc.availability_zone[0]
  encrypted              = local.efs_config.encrypted
  kms_key_id             = data.aws_kms_key.key.arn
  name                   = local.efs_config.name
  depends_on             = [module.vpc]
}

module "ec2" {
  source                      = "./modules/ec2"
  count                       = local.ec2_config.count
  ami                         = data.aws_ami.ubuntu.id
  instance_type               = local.ec2_config.instance_type
  instance_name               = "${local.ec2_config.instance_name}-${count.index}"
  associate_public_ip_address = local.ec2_config.associate_public_ip_address
  subnet_id                   = module.vpc.subnet_id[0]
  vpc_security_group_ids      = [module.sg.sg_id]
  key_name                    = local.ec2_config.key_name
  depends_on                  = [module.vpc]
  encrypted                   = local.ec2_config.encrypted
  kms_key_id                  = data.aws_kms_key.key.arn
  volume_type                 = local.ec2_config.volume_type
  volume_size                 = local.ec2_config.volume_size
}

module "s3" {
  source     = "./modules/s3"
  count      = local.s3_config.count
  bucket     = "${local.s3_config.bucket_name}-${count.index}-${random_id.random_sufix.hex}"
  versioning = local.s3_config.versioning
}

module "rds" {
  source                          = "./modules/rds"
  count                           = local.rds_config.count
  identifier                      = "${local.rds_config.identifier}-${count.index}"
  instance_class                  = local.rds_config.instance_class
  allocated_storage               = local.rds_config.allocated_storage
  max_allocated_storage           = local.rds_config.max_allocated_storage
  storage_encrypted               = local.rds_config.storage_encrypted
  backup_retention_period         = local.rds_config.backup_retention_period
  backup_window                   = local.rds_config.backup_window
  ca_cert_identifier              = local.rds_config.ca_cert_identifier
  copy_tags_to_snapshot           = local.rds_config.copy_tags_to_snapshot
  vpc_security_group_ids          = [module.sg.sg_id]
  deletion_protection             = local.rds_config.deletion_protection
  maintenance_window              = local.rds_config.maintenance_window
  multi_az                        = local.rds_config.multi_az
  port                            = local.rds_config.port
  publicly_accessible             = local.rds_config.publicly_accessible
  username                        = local.rds_config.username
  skip_final_snapshot             = local.rds_config.skip_final_snapshot
  storage_type                    = local.rds_config.storage_type
  kms_key_id                      = local.rds_config.storage_encrypted == true ? data.aws_kms_key.key.arn : ""
  enabled_cloudwatch_logs_exports = local.rds_config.enabled_cloudwatch_logs_exports
  engine_name                     = local.rds_config.engine_name
  major_engine_version            = local.rds_config.major_engine_version
  family                          = local.rds_config.family
  engine_version                  = local.rds_config.engine_version
  license_model                   = local.rds_config.license_model
  subnet_ids                      = module.vpc.subnet_id
  depends_on                      = [module.vpc, module.sg]
}