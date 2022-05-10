provider "aws" {
  region = var.aws_region
}

# terraform state file will be stored in S3 by default
# we did this below example for s3 only practice purpose
# if we did not specicify backend configuration, terraform would still
# move terraform state file to S3 by default.
terraform {
  backend "s3" {
    bucket         = "terraformstatebucket3"
    key            = "terraform.tfstate"
    region         = "us-east-2"
    dynamodb_table = "terraformDynamoDB"
  }
}






