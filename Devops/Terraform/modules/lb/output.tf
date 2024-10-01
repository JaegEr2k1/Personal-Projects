output "lb_arn" {
  value = aws_lb.lab_lb.arn
}

output "lb_dns_name" {
  value = aws_lb.lab_lb.dns_name
}

output "target_group_arn" {
  value = aws_lb_target_group.lab_tg.arn
}