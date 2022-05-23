resource "aws_subnet" "private_subnet_1a" {
  vpc_id = "${aws_default_vpc.default.id}"
  cidr_block = "172.31.255.0/27"
  availability_zone = "eu-west-1a"

  tags = {
    Name = "private_subnet_1a"
  }
}
