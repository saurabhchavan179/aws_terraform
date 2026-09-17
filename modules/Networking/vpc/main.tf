
resource "aws_vpc" "main" {

  cidr_block = var.vpc_cidr

  enable_dns_support = true

  enable_dns_hostnames = true

  tags = {
    Name = "${var.Environment}-vpc"
  }
}

resource "aws_subnet" "public_subnet_01" {
  vpc_id            = aws_vpc.main.id
  cidr_block        = var.public_subnet_01_cidr
  map_public_ip_on_launch = true

  tags = {
    Name = var.public_subnet_01_name
  }
}




resource "aws_subnet" "private_subnet_01" {
  vpc_id            = aws_vpc.main.id
  cidr_block        = var.private_subnet_01_cidr

  tags = {
    Name = var.private_subnet_01_name
  }
}

resource "aws_subnet" "private_subnet_02" {
  vpc_id            = aws_vpc.main.id
  cidr_block        = var.private_subnet_02_cidr

  tags = {
    Name = var.private_subnet_02_name
  }
}

resource "aws_internet_gateway" "my-igw" {
  vpc_id = aws_vpc.main.id

  tags = {
    Name = var.igw_name
  }
}

resource "aws_route_table" "my-rt" {
  vpc_id = aws_vpc.main.id

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.my-igw.id
  }


  tags = {
    Name = var.public_rt_name
  }
}

resource "aws_route_table_association" "public_rt_assoc" {
  subnet_id      = aws_subnet.public_subnet_01.id
  route_table_id = aws_route_table.my-rt.id
}

resource "aws_eip" "lb" {
  domain   = "vpc"
}

resource "aws_nat_gateway" "my_nat_gateway" {
  allocation_id = aws_eip.lb.id
  subnet_id     = aws_subnet.public_subnet_01.id

  tags = {
    Name = "my-igw-NAT"
  }

  # To ensure proper ordering, it is recommended to add an explicit dependency
  # on the Internet Gateway for the VPC.
  depends_on = [aws_internet_gateway.my-igw]
}

resource "aws_route_table" "private_rt" {
  vpc_id = aws_vpc.main.id

  route {
    cidr_block = "0.0.0.0/0"
    nat_gateway_id = aws_nat_gateway.my_nat_gateway.id
  }


  tags = {
    Name = var.private_rt_name
  }
}


resource "aws_route_table_association" "private_rt_assoc" {
  subnet_id      = aws_subnet.private_subnet_01.id
  route_table_id = aws_route_table.private_rt.id
}