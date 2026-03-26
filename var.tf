# VPC
variable "vpc_cidr_block" {  }
variable "public_subnet_cidr" {  }
variable "private_subnet_cidr" {  }
variable "private_subnet_cidr_2" {  }
variable "public_az" { }
variable "private_az" {  }

# S3
variable "bucket_name" {  }

# EC2
variable "ami_id" {  }
variable "instance_type" {  }
variable "key_name" {  }

# RDS
variable "engine" {  }
variable "engine_version" {  }
variable "instance_class" {  }
variable "db_name" { }
variable "username" { }
variable "password" { }
