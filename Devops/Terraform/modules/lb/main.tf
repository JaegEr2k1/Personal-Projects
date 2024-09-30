resource "aws_lb" "lab_lb" {
  internal           = false
  load_balancer_type = "application"
  security_groups    = [var.security_group_id]
  subnets            = [var.public_subnet_a_id, var.public_subnet_b_id]

  tags = {
    Name = "${var.prefix_name}-${var.owner}-${var.env}-lb"
  }
}

resource "aws_lb_target_group" "lab_tg" {
  port        = 80
  protocol    = "HTTP"
  vpc_id      = var.vpc_id
  target_type = "instance"

  health_check {
    interval            = 30
    path                = "/"
    protocol            = "HTTP"
    timeout             = 5
    healthy_threshold   = 5
    unhealthy_threshold = 2
  }

  tags = {
    Name = "${var.prefix_name}-${var.owner}-${var.env}-lb"
  }
}

resource "aws_lb_listener" "lab_listener" {
  load_balancer_arn = aws_lb.lab_lb.arn
  port              = 80
  protocol          = "HTTP"

  default_action {
    type             = "forward"
    target_group_arn = aws_lb_target_group.lab_tg.arn
  }
}

