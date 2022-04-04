
module "vpc" {
  source   = "./modules/network/vpc"
  vpc_cidr = local.vpc.vpc_cidr
  vpc_name = local.vpc.vpc_name
}

module "public_subnet" {
  source            = "./modules/network/subnet"
  vpc_id            = module.vpc.id
  subnet_name       = local.public_subnet.subnet_name
  subnet_cidr       = local.public_subnet.subnet_cidr
  availability_zone = local.public_subnet.availability_zone
  depends_on        = [module.vpc]
}

module "private_subnet" {
  source            = "./modules/network/subnet"
  vpc_id            = module.vpc.id
  subnet_name       = local.private_subnet.subnet_name
  subnet_cidr       = local.private_subnet.subnet_cidr
  availability_zone = local.private_subnet.availability_zone
  depends_on        = [module.vpc]
}

module "data_subnet" {
  source            = "./modules/network/subnet"
  vpc_id            = module.vpc.id
  subnet_name       = local.data_subnet.subnet_name
  subnet_cidr       = local.data_subnet.subnet_cidr
  availability_zone = local.data_subnet.availability_zone
  depends_on        = [module.vpc]
}

module "internetgw" {
  source           = "./modules/network/internetgw"
  vpc_id           = module.vpc.id
  internet_gw_name = local.internetgw.internet_gateway_name
  depends_on       = [module.vpc]
}

module "eip" {
  source   = "./modules/network/eip"
  eip_name = local.eip.eip_name
}

module "natgw1" {
  source            = "./modules/network/natgw"
  connectivity_type = local.natgw1.connectivity_type
  allocation_id     = module.eip.id
  nat_gateway_name  = local.natgw1.nat_gateway_name
  subnet_id         = module.public_subnet.id[0]
  depends_on        = [module.vpc, module.internetgw, module.public_subnet]
}

module "public_route_table" {
  source           = "./modules/network/routetable/common"
  vpc_id           = module.vpc.id
  route_table_name = local.public_route_table.route_table_name
  route            = local.public_route_table.route
  subnet_id        = module.public_subnet.id
  depends_on       = [module.vpc, module.public_subnet, module.internetgw]
}

module "private_route_table" {
  source           = "./modules/network/routetable/common"
  vpc_id           = module.vpc.id
  route_table_name = local.private_route_table.route_table_name
  route            = local.private_route_table.route
  subnet_id        = module.private_subnet.id
  depends_on       = [module.vpc, module.private_subnet, module.natgw1]
}

module "data_route_table" {
  source           = "./modules/network/routetable/data"
  vpc_id           = module.vpc.id
  route_table_name = local.data_route_table.route_table_name
  subnet_id        = module.data_subnet.id
  depends_on       = [module.vpc, module.data_subnet]
}

module "vpce_s3" {
  source            = "./modules/network/endpoint"
  vpce_name         = local.vpce_s3.vpce_name
  service_name      = local.vpce_s3.service_name
  vpc_endpoint_type = local.vpce_s3.vpc_endpoint_type
  vpc_id            = module.vpc.id
  route_table_id    = module.private_route_table.id
  depends_on        = [module.vpc]
}

module "public_sg" {
  source         = "./modules/network/sg"
  sg_name        = local.public_sg.sg_name
  sg_description = local.public_sg.sg_description
  vpc_id         = module.vpc.id
  ingress        = local.public_sg.ingress
  egress         = local.public_sg.egress
  depends_on     = [module.vpc]
}

module "private_sg" {
  source         = "./modules/network/sg"
  sg_name        = local.private_sg.sg_name
  sg_description = local.private_sg.sg_description
  vpc_id         = module.vpc.id
  ingress        = local.private_sg.ingress
  egress         = local.private_sg.egress
  depends_on     = [module.vpc]
}

module "data_sg" {
  source         = "./modules/network/sg"
  sg_name        = local.data_sg.sg_name
  sg_description = local.data_sg.sg_description
  vpc_id         = module.vpc.id
  ingress        = local.data_sg.ingress
  egress         = local.data_sg.egress
  depends_on     = [module.vpc]
}