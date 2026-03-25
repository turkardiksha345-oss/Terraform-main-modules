provider "aws" {
   region= "eu-north-1"
}
module "vpc" {
  source = "git::https://github.com/your-username/terraform-aws-vpc.git"

  vpc_cidr_block      = var.vpc_cidr_block
  vpc_name            = var.vpc_name

  public_subnet_cidr  = var.public_subnet_cidr
  private_subnet_cidr = var.private_subnet_cidr

  public_az           = var.public_az
  private_az          = var.private_az
}


module "s3" {
  source = "git::https://github.com/your-username/terraform-aws-s3.git"

  bucket_name = var.bucket_name
  environment = var.environment
}


module "ec2" {
  source = "git::https://github.com/your-username/terraform-aws-ec2.git"

  ami_id         = var.ami_id
  instance_type  = var.instance_type
  key_name       = var.key_name

  vpc_id         = var.vpc_id
}


module "rds" {
  source = "git::https://github.com/your-username/terraform-aws-rds.git"

  engine              = var.engine
  engine_version      = var.engine_version
  instance_class      = var.instance_class

  db_name             = var.db_name
  username            = var.username
  password            = var.password

  subnet_ids          = [module.vpc.private_subnet_id]
  security_group_id   = module.ec2.security_group_id   # using EC2 SG (or separate SG module)
}
