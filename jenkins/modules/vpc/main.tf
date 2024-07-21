# Creting the VPC and calling it craftyverse_vpc
resource "aws_vpc" "craftyverse_vpc" {
  # Setting the CIDR block of the VPC to the variable vpc_cidr_block
  cidr_block = var.vpc_cidr_block

  # Enabling DNS hostnames on the VPC
  enable_dns_hostnames = true

  # Setting the tag Name to craftyverse_vpc
  tags = {
    Name = "craftyverse_vpc"
  }
}

# Creating the Internet Gateway and naming it craftyverse_igw
resource "aws_internet_gateway" "craftyverse_igw" {
  # Attaching it to the VPC called craftyverse_vpc
  vpc_id = aws_vpc.craftyverse_vpc.id

  # Setting the Name tag to craftyverse_igw
  tags = {
    Name = "craftyverse_igw"
  }
}

# Creating the public route table and calling it craftyverse_public_rt
resource "aws_route_table" "craftyverse_public_rt" {
  # Creating it inside the craftyverse_vpc VPC
  vpc_id = aws_vpc.craftyverse_vpc.id

  # Adding the internet gateway to the route table
  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.craftyverse_igw.id
  }
}

# Data store that holds the available AZs in our region
data "aws_availability_zones" "available" {
  state = "available"
}

# Creating the public subnet and naming it craftyverse_public_subnet
resource "aws_subnet" "craftyverse_public_subnet" {
  # Creating it inside the craftyverse_vpc VPC
  vpc_id = aws_vpc.craftyverse_vpc.id

  # Setting the CIDR block to the variable public_subnet_cidr_block
  cidr_block = var.public_subnet_cidr_block

  # Setting the AZ to the first one in our available AZ data store
  availability_zone = data.aws_availability_zones.available.names[0]

  # Setting the tag Name to "craftyverse_public_subnet"
  tags = {
    Name = "craftyverse_public_subnet"
  }
}

# Associating our public subnet with our public route table
resource "aws_route_table_association" "public" {
  # The ID of our public route table called craftyverse_public_rt
  route_table_id = aws_route_table.craftyverse_public_rt.id

  # The ID of our public subnet called craftyverse_public_subnet
  subnet_id = aws_subnet.craftyverse_public_subnet.id
}

