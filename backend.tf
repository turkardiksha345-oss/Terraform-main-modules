terraform {
  backend "s3" {
    bucket         = "diksha-terraform-state-bucket"   # must be globally unique
    key            = "root-module/terraform.tfstate"
    region         = "eu-north-1"
  }
}
