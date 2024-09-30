# Creating an S3 Bucket
resource "aws_s3_bucket" "bucket_lab" {
  bucket         = "${var.prefix_name}${var.owner}${var.env}s3bucket"
  force_destroy  = true
}

# Configuring the S3 Bucket for Static Website Hosting
resource "aws_s3_bucket_website_configuration" "blog" {
  bucket   = aws_s3_bucket.bucket_lab.id

  index_document {
    suffix = "index.html"
  }

  error_document {
    key    = "error.html"
  }
}

# S3 bucket public access configuration
resource "aws_s3_bucket_public_access_block" "public_access_block" {
  bucket                  = aws_s3_bucket.bucket_lab.id
  block_public_acls       = false
  block_public_policy     = false
  ignore_public_acls      = false
  restrict_public_buckets = false
}

# Adding a Bucket Policy to allow public access
resource "aws_s3_bucket_policy" "bucket_policy" {
  bucket = aws_s3_bucket.bucket_lab.id

  policy = templatefile("${path.module}/s3_policy.json", {
    bucket_arn = "arn:aws:s3:::${aws_s3_bucket.bucket_lab.bucket}"
  })
}

