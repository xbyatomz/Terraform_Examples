resource "aws_placement_group" "exmaple_placement_group" {
  name     = "example"
  strategy = "cluster"
}

resource "aws_autoscaling_group" "bar" {
  name                      = "example_terraform_asg"
  max_size                  = 3
  min_size                  = 1
  health_check_grace_period = 300
  health_check_type         = "ELB"
  desired_capacity          = 1
  force_delete              = true
  placement_group           = aws_placement_group.exmaple_placement_group.id
  launch_configuration      = aws_launch_configuration.foobar.name
  vpc_zone_identifier       = [aws_subnet.example1.id, aws_subnet.example2.id]
}