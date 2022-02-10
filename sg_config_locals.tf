
locals {
  sg_ec2_config = {
    sg_name        = "awslab-sg-ec2"
    sg_description = "awslab-sg-ec2"
    ingress = [
      {
        description     = "SSH"
        from_port       = 22
        to_port         = 22
        protocol        = "tcp"
        cidr_blocks     = ["45.238.254.242/32"]
        security_groups = []
      }
    ]
    egress = [
      {
        description     = "ALL"
        from_port       = 0
        to_port         = 0
        protocol        = "-1"
        cidr_blocks     = ["0.0.0.0/0"]
        security_groups = []
      }
    ]
  }
  sg_rds_config = {
    sg_name        = "awslab-sg-rds"
    sg_description = "awslab-sg-rds"
    ingress = [
      {
        description     = "MYSQL"
        from_port       = 3306
        to_port         = 3306
        protocol        = "tcp"
        cidr_blocks     = []
        security_groups = [module.sg_ec2.id]
      }
    ]
    egress = [
      {
        description     = "ALL"
        from_port       = 0
        to_port         = 0
        protocol        = "-1"
        cidr_blocks     = ["0.0.0.0/0"]
        security_groups = []
      }
    ]
  }
}