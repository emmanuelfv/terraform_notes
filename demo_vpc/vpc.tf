# Creating VPC
resource "aws_vpc" "vpc-main" {
  cidr_block           = "192.168.0.0/16"
  instance_tenancy     = "default"
  enable_dns_support   = "true"
  enable_dns_hostnames = "true"
  enable_classiclink   = "false"
  tags = {
    Name = "vpc-main"
  }
}
# Creating Public Subnets
resource "aws_subnet" "vpc-main-public1" {
  vpc_id                  = aws_vpc.vpc-main.id
  cidr_block              = "192.168.1.0/24"
  map_public_ip_on_launch = "true"
  availability_zone       = "ap-south-1a"
  tags = {
    Name = "vpc-main-public1"
  }
}
# Creating Private Subnets
resource "aws_subnet" "vpc-main-private1" {
  vpc_id                  = aws_vpc.vpc-main.id
  cidr_block              = "192.168.4.0/24"
  map_public_ip_on_launch = "false"
  availability_zone       = "ap-south-1a"
  tags = {
    Name = "vpc-main-private1"
  }
}
# Creating Internet Gateway
resource "aws_internet_gateway" "main-gw" {
  vpc_id = aws_vpc.vpc-main.id
  tags = {
    Name = "gateway-main"
  }
}
# Creating Routing Table
resource "aws_route_table" "main-public" {
  vpc_id = aws_vpc.vpc-main.id
  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.main-gw.id
  }
  tags = {
    Name = "main-public"
  }
}
# Route Associated Public Subnets
resource "aws_route_table_association" "public-main-1" {
  subnet_id      = aws_subnet.vpc-main-public1.id
  route_table_id = aws_route_table.main-public.id
}

