provider "aws" {
	region = var.aws_region
}

terraform {
  backend "s3" {
    bucket = "daxin-deployment"
    key    = "deployment/vpc.out"
    region = "us-east-1"
  }
}
