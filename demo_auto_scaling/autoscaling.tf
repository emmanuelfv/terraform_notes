resource "aws_autoscaling_group" "demo" {
  launch_template {
    id = aws_launch_template.demo.id
    version = "$Latest"
  }

  vpc_zone_identifier = data.aws_subnet_ids.default.ids
  min_size = 2
  max_size = 5
  tag {
    key = "demo"
    value = "webserver-with-asg"
    propagate_at_launch = true
  }
}
data "aws_vpc" "default" {
default = true
}
data "aws_subnet_ids" "default" {
vpc_id = data.aws_vpc.default.id
}
