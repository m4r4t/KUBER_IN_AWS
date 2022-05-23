terraform {
  required_version = ">=0.12.0"
  required_providers {
    aws = ">=3.0.0"
  }
  backend "s3" {
    region = "eu-west-1"
    key    = "main/terraform.tfstate"
    bucket = "user498036601520-temp-bucket"
  }
}
