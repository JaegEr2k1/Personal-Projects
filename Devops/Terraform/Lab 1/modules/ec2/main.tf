# EC2 Instance Profile
resource "aws_iam_instance_profile" "ec2_instance_profile" {
  name = "${var.prefix_name}-${var.owner}-${var.env}-instance-profile"
  role = "${var.prefix_name}-${var.owner}-${var.env}-instance-role"
}

#EC2 Instance
resource "aws_instance" "lab_instance" {
  ami           = var.ami
  instance_type = var.instance_type
  key_name      = var.key_name
  vpc_security_group_ids = [var.security_group_id]
  iam_instance_profile = aws_iam_instance_profile.ec2_instance_profile.name
  tags = {
    Name = "${var.prefix_name}-${var.owner}-${var.env}"
  }
}