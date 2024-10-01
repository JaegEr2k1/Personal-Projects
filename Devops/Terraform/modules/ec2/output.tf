output "public_instance_id" {
  value = aws_instance.public_instance.id
}

output "private_instance_id" {
  value = aws_instance.private_instance.id
}

output "instance_profile_name" {
  value = aws_iam_instance_profile.ec2_instance_profile.name
}

