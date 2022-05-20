module "vpc" {
  source  = "terraform-aws-modules/vpc/aws"
  version = "3.13.0"

  #VPC basic details
  name = "${local.name}-${var.vpc_name}"
  cidr = var.vpc_cidr
  azs                 = var.azs
  private_subnets     = var.private_subnets 
  public_subnets      = var.public_subnets
  database_subnets    = var.database_subnets
  database_subnet_suffix = var.database_subnets_suffix

  create_database_subnet_group = var.vpc_create_database_subnet_group 
  create_database_subnet_route_table = var.vpc_create_database_subnet_route_table
  #nat gateway for outbound connection
  enable_nat_gateway = var.vpc_enable_nat_gateway

  #VPC DNS Parameters

  enable_dns_hostnames = true
  enable_dns_support = true

 public_subnet_tags = {
      Name = "public-subnets"
  }
  private_subnet_tags = {
      Name = "private-subnets"
  }

  vpc_tags = local.common_tags
  tags = local.common_tags
}


