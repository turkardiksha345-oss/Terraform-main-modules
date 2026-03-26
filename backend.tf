terraform {
  backend "s3" {
    bucket         = "diksha-terraform-state-store01"   
    key            = "root-module/terraform.tfstate"
    region         = "eu-north-1"
  }
}
