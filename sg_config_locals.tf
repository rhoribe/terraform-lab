
locals {
  public_sg = {
    sg_name        = "public_sg"
    sg_description = "public_sg"
    ingress = [
      {
        description     = "SSH"
        from_port       = 22
        to_port         = 22
        protocol        = "tcp"
        cidr_blocks     = ["45.238.254.167/32"]
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
  private_sg = {
    sg_name        = "private_sg"
    sg_description = "private_sg"
    ingress = [
      {
        description     = "Public / Private"
        from_port       = 0
        to_port         = 0
        protocol        = "-1"
        cidr_blocks     = []
        security_groups = [module.public_sg.id]
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
  data_sg = {
    sg_name        = "data_sg"
    sg_description = "data_sg"
    ingress = [
      {
        description     = "Private / data"
        from_port       = 3306
        to_port         = 3306
        protocol        = "TCP"
        cidr_blocks     = []
        security_groups = [module.private_sg.id]
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