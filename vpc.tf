# create vpc
resource "aws_vpc" "my_vpc" {
    cidr_block = "18.0.0.0/20" 
    tags = {
    Name = "terraformdev"
  }
}

# create sous-reseau // ca-central-1a
resource "aws_subnet" "pub-sub-vpc" {
  vpc_id = aws_vpc.my_vpc.id
  cidr_block       = "18.0.12.0/23"
  availability_zone = "ca-central-1a"
  map_public_ip_on_launch = true
}
resource "aws_subnet" "priv-sub-vpc" {
  vpc_id = aws_vpc.my_vpc.id
  cidr_block       = "18.0.14.0/23"
  availability_zone = "ca-central-1a"
  map_public_ip_on_launch = false
}

# Create Internet Passerelle
resource "aws_internet_gateway" "gw" {
  vpc_id = "${aws_vpc.my_vpc.id}"
}

