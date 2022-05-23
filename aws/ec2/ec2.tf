resource "aws_instance" "example_server_public" {
  ami = "ami-00c90dbdc12232b58"
  instance_type = "t2.micro"

  tags = {
    Name = var.instance_name
  }
}