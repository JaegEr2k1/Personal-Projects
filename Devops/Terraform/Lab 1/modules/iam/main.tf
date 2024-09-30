# IAM Role
resource "aws_iam_role" "ec2_role" {
  name = "${var.prefix_name}-${var.owner}-${var.env}-ec2-role"
  assume_role_policy = file("${path.module}/assume_role_policy.json")
}

# IAM Policy to allow listing S3 buckets
resource "aws_iam_policy" "s3_list_policy" {
  name   = "${var.prefix_name}-${var.owner}-${var.env}-s3-list-policy"
  policy = file("${path.module}/s3_list_policy.json")
}

# Attach Policy to Role
resource "aws_iam_role_policy_attachment" "attach_s3_list_policy" {
  role       = aws_iam_role.ec2_role.name
  policy_arn = aws_iam_policy.s3_list_policy.arn
}