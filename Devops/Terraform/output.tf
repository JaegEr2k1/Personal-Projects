output "public_instance_id" {
  value = module.ec2.public_instance_id
}

output "private_instance_id" {
  value = module.ec2.private_instance_id
}

output "load_balancer_dns" {
  value = module.lb.lb_dns_name
}