resource "aws_security_group" "lab_sg" {
  vpc_id = var.vpc_id
  tags = {
    Name = "${var.prefix_name}-${var.owner}-${var.env}-sg"
  }

  ingress {
    from_port   = 22              # Allow SSH
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  ingress {
    from_port   = 80              # Allow HTTP
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    from_port   = 0               # Allow all port outbound
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
}