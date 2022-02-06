
locals {
  sg_config = {
    sg_name        = "awslab-sg"
    sg_description = "awslab-sg"
    ingress = [
      {
        description = "SSH"
        from_port   = 22
        to_port     = 22
        protocol    = "tcp"
        cidr_blocks = ["45.238.254.207/32"]
      }
    ]
    egress = [
      {
        description = "ALL"
        from_port   = 0
        to_port     = 0
        protocol    = "-1"
        cidr_blocks = ["0.0.0.0/0"]
      }
    ]
  }
}