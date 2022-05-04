resource "aws_s3_bucket" "sharks_bucket" {
  bucket = var.s3_bucket


  tags = {
    Name        = var.s3_bucket
    Environment = terraform.workspace
  }
}

