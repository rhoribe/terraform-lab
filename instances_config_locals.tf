locals {
  public_ec2_role = {
    role_name = "PublicEC2Role"
  }
  private_ec2_role = {
    role_name = "PrivateEC2Role"
  }
  public_ec2 = {
    instance_type               = "t2.micro"
    instance_name               = "public_ec2"
    key_name                    = "aws-lab"
    associate_public_ip_address = true
    count                       = 1
    encrypted                   = true
    volume_type                 = "gp2"
    volume_size                 = 8
  }
  private_ec2 = {
    instance_type               = "t2.micro"
    instance_name               = "private_ec2"
    key_name                    = "aws-lab"
    associate_public_ip_address = false
    count                       = 1
    encrypted                   = true
    volume_type                 = "gp2"
    volume_size                 = 8
  }
}