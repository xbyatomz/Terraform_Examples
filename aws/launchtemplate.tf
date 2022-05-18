resource "aws_launch_template" "example_launch_template" {
  name = "Example_Launch_Template"

  credit_specification {
    cpu_credits = "standard"
  }

  disable_api_termination = false

  ebs_optimized = true

  image_id = "ami-00c90dbdc12232b58"

  instance_initiated_shutdown_behavior = "stop"

  instance_type = "t2.micro"

  metadata_options {
    http_endpoint               = "enabled"
    http_tokens                 = "required"
    http_put_response_hop_limit = 1
    instance_metadata_tags      = "enabled"
  }

  monitoring {
    enabled = false
  }

  network_interfaces {
    associate_public_ip_address = false
    security_groups = [ "${aws_security_group.allow_traffic.id}" ]
    subnet_id = "${aws_subnet.private_subnet_1a.id}"
  }

  placement {
    availability_zone = "eu-west-1a"
  }

  tag_specifications {
    resource_type = "instance"

    tags = {
      Name = "exmaple_launch_template_server"
    }
  }

#   user_data = filebase64("${path.module}/example.sh")
}