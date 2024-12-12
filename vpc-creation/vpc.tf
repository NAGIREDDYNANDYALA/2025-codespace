resource "aws_vpc" "test-vpc" {
  cidr_block = var.vpc_cidr
  instance_tenancy = var.instance_tenancy
  enable_dns_support = var.enable_dns_support
  enable_dns_hostnames = var.enable_dns_hostnames
  enable_classiclink = var.enable_classiclink
  tags = {
    Name = "terraform-VPC"
  }
}

# subnet creation
resource "aws_subnet" "main" {
  vpc_id     = aws_vpc.main.id
  cidr_block = var.aws_subnet_cidr
  map_public_ip_on_launch = "true"
  availability_zone = var.availability_zone
  tags = {
    Name = "test-subnet"
  }
}