provider "aws" {
  region = var.region
}

module "ec2" {
  count = 2
  source = "./modules/ec2"
}

module "s3" {
  source = "./modules/s3"
  bucket = var.bucket
}