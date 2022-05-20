variable "owner" { default = "vpc-module"}
variable "vpc_name" {default = "my-vpc"}
variable "vpc_cidr" {default = "10.10.0.0/16" }
variable "database_subnets_suffix" { default = "database"}
variable "name" { default = "cloud"}

variable "enable_nat_gateway" { 
    type = bool
    default = true
}

variable "public_subnets" {
  type        = list(string)
  default     = ["10.10.11.0/24", "10.10.12.0/24", "10.10.13.0/24"]
}

variable "database_subnets" {
  type        = list(string)
  default     = ["10.10.21.0/24", "10.10.22.0/24", "10.10.23.0/24"]
} 

variable "private_subnets" {
  type        = list(string)
  default     = ["10.10.1.0/24", "10.10.2.0/24", "10.10.3.0/24"]
}

variable "azs" {
  type        = list(string)
  default     = ["us-east-1a", "us-east-1b", "us-east-1b"]
}

variable "aws_region" {
  type = string
  default = "us-east-1"  
}
variable "environment" {
  type = string
  default = "dev"
}

# VPC Create Database Subnet Group (True / False)
variable "vpc_create_database_subnet_group" {
  type = bool
  default = true 
}

# VPC Create Database Subnet Route Table (True or False)
variable "vpc_create_database_subnet_route_table" {
  type = bool
  default = true   
}

  
# VPC Enable NAT Gateway (True or False) 
variable "vpc_enable_nat_gateway" {
  type = bool
  default = true  
}

