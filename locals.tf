locals {
    common_tags = {
        Project = var.project
        Environment = var.environment
        Terraform ="true"
        public_subnet_cidrs = ["10.0.1.0/24", "10.0.2.0/24"]
    }
}