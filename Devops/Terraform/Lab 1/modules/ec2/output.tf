output "instance_profile_name" {
  value = aws_iam_instance_profile.ec2_instance_profile.name
}

output "public_instance_id" {
  value = aws_instance.lab_instance.id
}

