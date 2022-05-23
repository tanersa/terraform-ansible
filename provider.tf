provider "aws" {
  region = var.aws_region
}

terraform {
  backend "s3" {
    bucket         = "sharks-terra-backend79"
    key            = "terraform.tfstate"
    region         = "us-east-1"
    dynamodb_table = "terraformDynamoDB"
  }
}

# terraform state file will be stored in S3 by default
# we did this below example for s3 only practice purpose
# if we did not specicify backend configuration, terraform would still
# move terraform state file to S3 by default.





