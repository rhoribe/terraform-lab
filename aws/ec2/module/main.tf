resource "aws_instance" "ec2" {
  ami                         = var.ami
  instance_type               = var.instance_type
  subnet_id                   = var.subnet_id
  availability_zone           = var.availability_zone

  vpc_security_group_ids      = local.sg_local_id
  key_name                    = var.ec2_key_pair.aws_keypair

  root_block_device {
    volume_type = "gp2"
    volume_size = var.ec2_volume_size
  }

  tags = var.tags

  volume_tags = var.tags
}