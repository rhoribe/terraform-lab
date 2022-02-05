provider "aws" {
  region = var.region
}

module "ec2" {
  source = "./modules/ec2"
}