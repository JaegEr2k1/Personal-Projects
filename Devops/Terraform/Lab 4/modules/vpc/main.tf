resource "aws_vpc" "lab_vpc" {
  cidr_block = var.vpc_cidr_block
  enable_dns_support = true
  enable_dns_hostnames = true
  tags = {
    Name = "${var.prefix_name}-${var.owner}-${var.env}-vpc"
  }
}

resource "aws_internet_gateway" "lab_igw" {
  vpc_id = aws_vpc.lab_vpc.id
  tags = {
    Name = "${var.prefix_name}-${var.owner}-${var.env}-igw"
  }
}

resource "aws_nat_gateway" "lab_nat" {
  allocation_id = aws_eip.lab_nat_eip.id
  subnet_id     = aws_subnet.public_subnet_a.id
  tags = {
    Name = "${var.prefix_name}-${var.owner}-${var.env}-nat"
  }
}

resource "aws_eip" "lab_nat_eip" {
  domain = "vpc"
}

resource "aws_subnet" "public_subnet_a" {
  vpc_id     = aws_vpc.lab_vpc.id
  cidr_block = var.subnet_cidr_block_public_a
  availability_zone = var.subnet_region_a
  map_public_ip_on_launch = true
  tags = {
    Name = "${var.prefix_name}-${var.owner}-${var.env}-public_subnet_a"
  }
}

resource "aws_subnet" "public_subnet_b" {
  vpc_id     = aws_vpc.lab_vpc.id
  cidr_block = var.subnet_cidr_block_public_b
  availability_zone = var.subnet_region_b
  map_public_ip_on_launch = true
  tags = {
    Name = "${var.prefix_name}-${var.owner}-${var.env}-public_subnet_b"
  }
}

resource "aws_subnet" "private_subnet_a" {
  vpc_id     = aws_vpc.lab_vpc.id
  cidr_block = var.subnet_cidr_block_private_a
  availability_zone = var.subnet_region_a
  tags = {
    Name = "${var.prefix_name}-${var.owner}-${var.env}-private_subnet_a"
  }
}

resource "aws_subnet" "private_subnet_b" {
  vpc_id     = aws_vpc.lab_vpc.id
  cidr_block = var.subnet_cidr_block_private_b
  availability_zone = var.subnet_region_b
  tags = {
    Name = "${var.prefix_name}-${var.owner}-${var.env}-private_subnet_b"
  }
}

resource "aws_route_table" "public_route_table" {
  vpc_id = aws_vpc.lab_vpc.id
  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.lab_igw.id
  }
  tags = {
    Name = "${var.prefix_name}-${var.owner}-${var.env}-public_route_table"
  }
}

resource "aws_route_table_association" "public_route_table_assoc_a" {
  subnet_id      = aws_subnet.public_subnet_a.id
  route_table_id = aws_route_table.public_route_table.id
}

resource "aws_route_table_association" "public_route_table_assoc_b" {
  subnet_id      = aws_subnet.public_subnet_b.id
  route_table_id = aws_route_table.public_route_table.id
}

resource "aws_route_table" "private_route_table" {
  vpc_id = aws_vpc.lab_vpc.id
  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_nat_gateway.lab_nat.id
  }
  tags = {
    Name = "${var.prefix_name}-${var.owner}-${var.env}-private_route_table"
  }
}

resource "aws_route_table_association" "private_route_table_assoc_a" {
  subnet_id      = aws_subnet.private_subnet_a.id
  route_table_id = aws_route_table.private_route_table.id
}

resource "aws_route_table_association" "private_route_table_assoc_b" {
  subnet_id      = aws_subnet.private_subnet_b.id
  route_table_id = aws_route_table.private_route_table.id
}



