locals {
  rds_sm = {
    length                  = 16
    special                 = false
    min_upper               = 3
    min_lower               = 3
    min_numeric             = 3
    recovery_window_in_days = 0
  }
  rds = {
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