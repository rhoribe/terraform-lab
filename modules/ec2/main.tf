resource "aws_instance" "ec2" {
  ami                         = var.ami
  instance_type               = var.instance_type
  subnet_id                   = var.subnet_id
  vpc_security_group_ids      = var.vpc_security_group_ids
  associate_public_ip_address = var.associate_public_ip_address
  key_name                    = var.key_name
  user_data                   = var.user_data
  iam_instance_profile        = var.iam_instance_profile
  root_block_device {
    volume_size = var.volume_size
    volume_type = var.volume_type
    encrypted   = var.encrypted
    kms_key_id  = var.kms_key_id
  }
  tags = {
    Name = var.instance_name
  }
}