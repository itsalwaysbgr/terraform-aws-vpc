locals {
  common_tags = {
    Project     = var.project
    Envrionment = var.environment
    Terraform   = "ture"
  }
  az_names = slice(data.aws_availability_zones.available.names, 0, 2)
}