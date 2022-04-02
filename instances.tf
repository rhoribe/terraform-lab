
module "public_ec2_role" {
  source                      = "./modules/iam/role"
  role_name = local.public_ec2_role.role_name
  assume_role_policy = data.aws_iam_policy_document.public_ec2_role.json
  policy_document = data.aws_iam_policy_document.puclic_ec2_policy_document.json
}

module "private_ec2_role" {
  source                      = "./modules/iam/role"
  role_name = local.private_ec2_role.role_name
  assume_role_policy = data.aws_iam_policy_document.private_ec2_role.json
  policy_document = data.aws_iam_policy_document.private_ec2_policy_document.json
}

module "public_ec2" {
  source                      = "./modules/ec2"
  count                       = local.public_ec2.count
  ami                         = data.aws_ami.ubuntu.id
  instance_type               = local.public_ec2.instance_type
  instance_name               = "${local.public_ec2.instance_name}-${count.index}"
  associate_public_ip_address = local.public_ec2.associate_public_ip_address
  subnet_id                   = module.public_subnet.id[0]
  vpc_security_group_ids      = [module.public_sg.id]
  key_name                    = local.public_ec2.key_name
  encrypted                   = local.public_ec2.encrypted
  kms_key_id                  = module.kms.arn
  volume_type                 = local.public_ec2.volume_type
  volume_size                 = local.public_ec2.volume_size
  user_data                   = data.cloudinit_config.user_data.rendered
  iam_instance_profile        = module.public_ec2_role.name
  depends_on                  = [ data.cloudinit_config.user_data, module.kms]
}

module "private_ec2" {
  source                      = "./modules/ec2"
  count                       = local.private_ec2.count
  ami                         = data.aws_ami.ubuntu.id
  instance_type               = local.private_ec2.instance_type
  instance_name               = "${local.private_ec2.instance_name}-${count.index}"
  associate_public_ip_address = local.private_ec2.associate_public_ip_address
  subnet_id                   = module.private_subnet.id[0]
  vpc_security_group_ids      = [module.private_sg.id]
  key_name                    = local.private_ec2.key_name
  encrypted                   = local.private_ec2.encrypted
  kms_key_id                  = module.kms.arn
  volume_type                 = local.private_ec2.volume_type
  volume_size                 = local.private_ec2.volume_size
  user_data                   = data.cloudinit_config.user_data.rendered
  iam_instance_profile        = module.private_ec2_role.name
  depends_on                  = [ data.cloudinit_config.user_data, module.kms]
}