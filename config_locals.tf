locals {
  vpc_config = {
    vpc_cidr          = "10.0.0.0/16"
    subnet_cidr       = ["10.0.1.0/24", "10.0.2.0/24", "10.0.3.0/24"]
    vpc_name          = "aws-lab"
    subnet_name       = "aws-lab-subnet"
    availability_zone = ["us-east-1a", "us-east-1b", "us-east-1c"]
    internet_gw_name  = "aws-lab-gw"
    route_table_name  = "aws-lab-rt"
    route_table_cidr  = "0.0.0.0/0"
  }
  efs_config = {
    creation_token = "awslab"
    encrypted      = true
    name           = "awslab"
  }
  ec2_config = {
    instance_type               = "t2.micro"
    instance_name               = "aws-lab"
    key_name                    = "aws-lab"
    associate_public_ip_address = true
    count                       = 1
    encrypted                   = true
    volume_type                 = "gp2"
    volume_size                 = 8
  }
  s3_config = {
    bucket_name = "awslab"
    versioning  = true
    count       = 1
  }
  rds_config = {
    count                           = 1
    identifier                      = "awslab"
    instance_class                  = "db.t2.micro"
    allocated_storage               = 10
    max_allocated_storage           = 20
    storage_encrypted               = false
    backup_retention_period         = 1
    backup_window                   = "04:00-05:00"
    ca_cert_identifier              = "rds-ca-2019"
    copy_tags_to_snapshot           = false
    deletion_protection             = false
    maintenance_window              = "tue:06:00-tue:08:00"
    multi_az                        = false
    port                            = 3306
    publicly_accessible             = false
    username                        = "admin"
    skip_final_snapshot             = true
    storage_type                    = "gp2"
    enabled_cloudwatch_logs_exports = ["error"]
    engine_name                     = "mysql"
    major_engine_version            = "5.7"
    family                          = "mysql5.7"
    engine_version                  = "5.7.26"
    license_model                   = "general-public-license"
  }
}