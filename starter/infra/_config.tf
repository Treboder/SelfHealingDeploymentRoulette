terraform {
  backend "s3" {
    bucket = "s3-udacity-terraform-us-east-2" # Update here with your S3 bucket
    key    = "terraform/terraform.tfstate"
    region = "us-east-2"
  }
}

provider "aws" {
  region = "us-east-2"

  default_tags {
    tags = local.tags
  }
}