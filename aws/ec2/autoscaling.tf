resource "aws_placement_group" "exmaple_placement_group" {
  name     = "example"
  strategy = "cluster"
}

resource "aws_autoscaling_group" "example_auto_scaling_group" {
  name                      = "example_terraform_asg"
  max_size                  = 3
  min_size                  = 1
  health_check_grace_period = 300
  health_check_type         = "ELB"
  desired_capacity          = 1
  force_delete              = true

  launch_template {
    id = "${aws_launch_template.example_launch_template.id}"
    version = "${aws_launch_template.example_launch_template.latest_version}"
  }
  vpc_zone_identifier = [ "${aws_subnet.private_subnet_1a.id}" ]

  depends_on = [
    aws_launch_template.example_launch_template
  ]
}