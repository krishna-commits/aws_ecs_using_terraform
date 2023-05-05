# vpc.tf
resource "aws_vpc" "example_vpc" {
  cidr_block = var.vpc_cidr_block
}

resource "aws_subnet" "example_public_subnet" {
  vpc_id                  = aws_vpc.example_vpc.id
  cidr_block              = var.public_subnet_cidr_block
  availability_zone       = var.availability_zone
  map_public_ip_on_launch = true
}

resource "aws_subnet" "example_private_subnet" {
  vpc_id                  = aws_vpc.example_vpc.id
  cidr_block              = var.private_subnet_cidr_block
  availability_zone       = var.availability_zone
  map_public_ip_on_launch = false
