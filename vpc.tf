resource "aws_vpc" "main" {
  cidr_block       = var.cidr_block
  instance_tenancy = "default" 
  enable_dns_hostnames = "true"

  tags = merge(
    local.common_tags,
    {
        Name = "${var.project}-${var.environment}"
    }
  )
}

resource "aws_internet_gateway" "main" {
  vpc_id = aws_vpc.main.id # connetction with vpc 

  tags = merge(
    local.common_tags,
    {
        Name = "${var.project}-${var.environment}"
    }
  )
}

resource "aws_subnet" "public" {
  count =  length(var.public_subnet_cidrs)
  vpc_id     = aws_vpc.main.id
  cidr_block = var.public_subnet_cidrs[count.index]
  

  tags = {
    Name = "Main"
  }
}