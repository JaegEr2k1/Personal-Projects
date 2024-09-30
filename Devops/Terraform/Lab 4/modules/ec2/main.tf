# Create public instance
resource "aws_instance" "public_instance" {
  ami             = var.ami
  instance_type   = var.instance_type
  subnet_id       = var.public_subnet_a_id
  key_name        = var.key_name
  vpc_security_group_ids = [var.security_group_id]

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



