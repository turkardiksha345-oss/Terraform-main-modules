provider "aws" {
   region= "eu-north-1"
}
module "vpc" {
  source = "git::https://github.com/turkardiksha345-oss/VPC-Module.git"

  vpc_cidr_block      = var.vpc_cidr_block

  public_subnet_cidr  = var.public_subnet_cidr
  private_subnet_cidr = var.private_subnet_cidr
  private_subnet_cidr_2 = var.private_subnet_cidr_2

  public_az           = var.public_az
  private_az          = var.private_az
  private_az_2          = var.private_az_2
}


module "s3" {
  source = "git::https://github.com/turkardiksha345-oss/S3-Module.git"

  bucket_name = var.bucket_name
}


module "ec2" {
  source = "git::https://github.com/turkardiksha345-oss/EC2-Module.git"

  ami_id         = var.ami_id
  instance_type  = var.instance_type
  key_name       = var.key_name
}


module "rds" {
  source = "git::https://github.com/turkardiksha345-oss/RDS-Module.git"

  engine         = var.engine
  engine_version = var.engine_version
  instance_class = var.instance_class

  db_name  = var.db_name
  username = var.username
  password = var.password
}
