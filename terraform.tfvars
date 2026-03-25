# VPC
vpc_cidr_block      = "10.0.0.0/16"
public_subnet_cidr  = "10.0.1.0/24"
private_subnet_cidr = "10.0.2.0/24"
public_az           = "eu-north-1a"
private_az          = "eu-north-1b"

# S3
bucket_name = "dikshacn-bucket-s3-01"

# EC2
ami_id        = "ami-080254318c2d8932f"   # replace with valid AMI
instance_type = "t3.micro"
key_name      = "viju-key"
vpc_id = "vpc-0fed28ece99ad2aa5"

# RDS
engine         = "mysql"
engine_version = "8.0"
instance_class = "db.t3.micro"
db_name        = "my-db"
username       = "admin"
password       = "admin123"
