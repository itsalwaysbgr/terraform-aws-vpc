variable "project" {
  type = string
}

variable "environment" {
  type = string
}

variable "cidr_block" {
  default = "10.0.0.0/16"
}

variable "vpc_tags" {
  type    = map(string)
  default = {}
}

variable "igw_tags" {
  type    = map(string)
  default = {}
}

# Correct CIDR Blocks: List of Strings
variable "public_subnet_cidrs" {
  type    = list(string)
  default = []
}

variable "private_subnet_cidrs" {
  type    = list(string)
  default = []
}

variable "database_subnet_cidrs" {
  type    = list(string)
  default = []
}

# Subnet Tags for Each Subnet Type
variable "public_subnet_tags" {
  type    = map(string)
  default = {}
}


#if user doesnt want to use tags then default = {} is mentioned 
# else default = {} will be removed 
# which goes as variable "private_subnet_tags" { type = map(string)}
# now the above private_subnet_tags becomes mandatory


variable "private_subnet_tags" {
  type    = map(string)
  default = {}
}

variable "database_subnet_tags" {
  type    = map(string)
  default = {}
}

variable "eip_tags" {
  type    = map(string)
  default = {}
}

variable "nat_gateway_tags" {
  type    = map(string)
  default = {}
}

variable "public_route_table_tags" {
  type    = map(string)
  default = {}
}

variable "private_route_table_tags" {
  type    = map(string)
  default = {}

}


variable "database_route_table_tags" {
  type    = map(string)
  default = {}
}


variable "is_peering_required" {
  default = false
}

variable "vpc_peering_tags" {
  type    = map(string)
  default = {}
}