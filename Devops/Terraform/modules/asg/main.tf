resource "aws_launch_template" "lab_lt" {
  image_id      = var.ami 
  instance_type = var.instance_type
  key_name      = var.key_name

  network_interfaces {
    security_groups = [var.security_group_id]
    associate_public_ip_address = true
  }
    user_data = base64encode(file("${path.module}/user_data.txt"))
  
    
  tags = {
    Name = "${var.prefix_name}-${var.owner}-${var.env}-lanch-temp"
  }
}

resource "aws_autoscaling_group" "lab_asg" {
  desired_capacity     = var.desired_capacity
  max_size             = var.max_size
  min_size             = var.min_size
  vpc_zone_identifier  = [var.public_subnet_a_id, var.public_subnet_b_id]
  launch_template {
    id      = aws_launch_template.lab_lt.id
    version = "$Latest"
  }

  target_group_arns = [var.target_group_arn]

  health_check_type         = "EC2"
  health_check_grace_period = 300

  tag {
    key                 = "Name"
    value               = "${var.prefix_name}-${var.owner}-${var.env}-asg-instance"
    propagate_at_launch = true
  }
}
