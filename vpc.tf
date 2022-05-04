locals {
  vpc_name = terraform.workspace == "dev" ? "terraform-dev" : "terraform-prod"

}

resource "aws_vpc" "terraform-eks-vpc" {
  #count = terraform.workspace == "dev" ? 0 : 1
  cidr_block       = var.vpc_cidr
  instance_tenancy = var.tenancy

  tags = {
    Name        = local.vpc_name
    Environment = terraform.workspace
    Location    = "USA"
  }
}

