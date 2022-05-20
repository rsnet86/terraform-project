locals {
  environment  = var.environment
  owner = var.owner
  name = var.name
  common_tags = {
      environment = local.environment
      owner = local.owner

  }
}
