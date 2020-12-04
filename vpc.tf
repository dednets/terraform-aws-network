# VPC
module "vpc" {
  source  = "terraform-aws-modules/vpc/aws"
  version = "~> 2"
  name    = var.vpc_name
  azs     = data.aws_availability_zones.available.names

  # VPC CIDR
  cidr = var.cidr

  # Public subnets
  # (expecting /16 VPC CIDR block size)
  # generate /24 subnet size
  public_subnets = [
    cidrsubnet(var.cidr, 8, 0),
    cidrsubnet(var.cidr, 8, 1),
    cidrsubnet(var.cidr, 8, 2),
    cidrsubnet(var.cidr, 8, 3),
  ]

  tags = var.tags
}
