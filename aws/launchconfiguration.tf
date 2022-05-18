resource "aws_launch_configuration" "example_launch_configuration" {
  name = "example_configuration"
  image_id = "ami-00c90dbdc12232b58"
  instance_type = "t2.micro"
  key_name = "example launch configuration server"

  root_block_device {
    volume_size = 15
    volume_type = "gp3"
  }


}