resource "aws_security_group" "allow_tls" {
  name        = "allow_tls"
  description = "Allow TLS inbound traffic and all outbound traffic"
  vpc_id      = "vpc-00b31bc9429ec8387"

  tags = {
    Name = "tf-day-03-sg"
  }
}


resource "aws_vpc_security_group_egress_rule" "outbound_traffic" {
  security_group_id = aws_security_group.allow_tls.id

  cidr_ipv4   = "0.0.0.0/0"
  ip_protocol = "-1"
}





# SSH - TCP 22
resource "aws_vpc_security_group_ingress_rule" "ssh" {
  security_group_id = aws_security_group.allow_tls.id

  cidr_ipv4   = "0.0.0.0/0"
  from_port   = 22
  ip_protocol = "tcp"
  to_port     = 22
}

# HTTP - TCP 80
resource "aws_vpc_security_group_ingress_rule" "http" {
  security_group_id = aws_security_group.allow_tls.id

  cidr_ipv4   = "0.0.0.0/0"
  from_port   = 80
  ip_protocol = "tcp"
  to_port     = 80
}


# FTP - TCP 21
resource "aws_vpc_security_group_ingress_rule" "ftp" {
  security_group_id = aws_security_group.allow_tls.id

  cidr_ipv4   = "0.0.0.0/0"
  from_port   = 21
  ip_protocol = "tcp"
  to_port     = 21
}

# SMTP - TCP 25
resource "aws_vpc_security_group_ingress_rule" "smtp" {
  security_group_id = aws_security_group.allow_tls.id

  cidr_ipv4   = "0.0.0.0/0"
  from_port   = 25
  ip_protocol = "tcp"
  to_port     = 25
}

# DNS - TCP 53
resource "aws_vpc_security_group_ingress_rule" "dns_tcp" {
  security_group_id = aws_security_group.allow_tls.id

  cidr_ipv4   = "0.0.0.0/0"
  from_port   = 53
  ip_protocol = "tcp"
  to_port     = 53
}

# MySQL - TCP 3306
resource "aws_vpc_security_group_ingress_rule" "mysql" {
  security_group_id = aws_security_group.allow_tls.id

  cidr_ipv4   = "0.0.0.0/0"
  from_port   = 3306
  ip_protocol = "tcp"
  to_port     = 3306
}

# PostgreSQL - TCP 5432
resource "aws_vpc_security_group_ingress_rule" "postgresql" {
  security_group_id = aws_security_group.allow_tls.id

  cidr_ipv4   = "0.0.0.0/0"
  from_port   = 5432
  ip_protocol = "tcp"
  to_port     = 5432
}

# RDP - TCP 3389
resource "aws_vpc_security_group_ingress_rule" "rdp" {
  security_group_id = aws_security_group.allow_tls.id

  cidr_ipv4   = "0.0.0.0/0"
  from_port   = 3389
  ip_protocol = "tcp"
  to_port     = 3389
}



# DNS - UDP 53
resource "aws_vpc_security_group_ingress_rule" "dns_udp" {
  security_group_id = aws_security_group.allow_tls.id

  cidr_ipv4   = "0.0.0.0/0"
  from_port   = 53
  ip_protocol = "udp"
  to_port     = 53
}

# DHCP - UDP 67
resource "aws_vpc_security_group_ingress_rule" "dhcp_server" {
  security_group_id = aws_security_group.allow_tls.id

  cidr_ipv4   = "0.0.0.0/0"
  from_port   = 67
  ip_protocol = "udp"
  to_port     = 67
}

# DHCP Client - UDP 68
resource "aws_vpc_security_group_ingress_rule" "dhcp_client" {
  security_group_id = aws_security_group.allow_tls.id

  cidr_ipv4   = "0.0.0.0/0"
  from_port   = 68
  ip_protocol = "udp"
  to_port     = 68
}

# NTP - UDP 123
resource "aws_vpc_security_group_ingress_rule" "ntp" {
  security_group_id = aws_security_group.allow_tls.id

  cidr_ipv4   = "0.0.0.0/0"
  from_port   = 123
  ip_protocol = "udp"
  to_port     = 123
}

# SNMP - UDP 161
resource "aws_vpc_security_group_ingress_rule" "snmp" {
  security_group_id = aws_security_group.allow_tls.id

  cidr_ipv4   = "0.0.0.0/0"
  from_port   = 161
  ip_protocol = "udp"
  to_port     = 161
}

# TFTP - UDP 69
resource "aws_vpc_security_group_ingress_rule" "tftp" {
  security_group_id = aws_security_group.allow_tls.id

  cidr_ipv4   = "0.0.0.0/0"
  from_port   = 69
  ip_protocol = "udp"
  to_port     = 69
}


# =========================================================
# ICMP
# =========================================================

# Allow ICMP / Ping
resource "aws_vpc_security_group_ingress_rule" "icmp" {
  security_group_id = aws_security_group.allow_tls.id

  cidr_ipv4   = "0.0.0.0/0"
  ip_protocol = "icmp"
  from_port   = -1
  to_port     = -1
}