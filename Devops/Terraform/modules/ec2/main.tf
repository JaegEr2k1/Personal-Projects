# EC2 instance profile
resource "aws_iam_instance_profile" "ec2_instance_profile" {
  name = "${var.prefix_name}-${var.owner}-${var.env}-instance-profile"
  role = var.iam_role_name
}

# Create public instance
resource "aws_instance" "public_instance" {
  ami             = var.ami
  instance_type   = var.instance_type
  subnet_id       = var.public_subnet_a_id
  key_name        = var.key_name
  vpc_security_group_ids = [var.security_group_id]
  iam_instance_profile = aws_iam_instance_profile.ec2_instance_profile.name
  user_data = file("${path.module}/user_data.txt")
  tags = {
    Name = "${var.prefix_name}-${var.owner}-${var.env}-public"
  }
}

# Create private instance
resource "aws_instance" "private_instance" {
  ami             = var.ami
  instance_type   = var.instance_type
  subnet_id       = var.private_subnet_b_id
  key_name        = var.key_name
  vpc_security_group_ids = [var.security_group_id]
  tags = {
    Name = "${var.prefix_name}-${var.owner}-${var.env}-private"
  }
}