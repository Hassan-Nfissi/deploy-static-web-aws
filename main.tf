# creat S3 bucket
resource "aws_s3_bucket" "mybucket" {
    bucket = var.bucketname
}
# Set ownership Rules for files
resource "aws_s3_bucket_ownership_controls" "example" {
  bucket = aws_s3_bucket.mybucket.id

  rule {
    object_ownership = "BucketOwnerPreferred"
  }
}

# Control public access to the Internet
resource "aws_s3_bucket_public_access_block" "example" {
  bucket = aws_s3_bucket.mybucket.id

  block_public_acls       = false # By making it false we can 
  block_public_policy     = false
  ignore_public_acls      = false
  restrict_public_buckets = false
}
# The aws_s3_bucket_acl resource sets the permissions for your S3 bucket.
# It ensures that only you (the owner) can access the bucket by setting the ACL to "private".
# The depends_on ensures the ACL is set after the other settings (ownership and public access) are applied.
resource "aws_s3_bucket_acl" "example" {
  depends_on = [
    aws_s3_bucket_ownership_controls.example,
    aws_s3_bucket_public_access_block.example,
  ]

  bucket = aws_s3_bucket.mybucket.id
  acl    = "public-read"
}
# create an aws_s3_object for index page
resource "aws_s3_object" "index" {
  bucket = aws_s3_bucket.mybucket.id
  key = "index.html"
  source = "app/index.html"
  acl = "public-read"
  content_type = "text/html"
}
# Create an aws_s3_object  for  error
resource "aws_s3_object" "error" {
  bucket = aws_s3_bucket.mybucket.id
  key = "error.html"
  source = "app/error.html"
  acl = "public-read"
  content_type = "text/html"
}
# Create an aws_s3_object for our icone
resource "aws_s3_object" "icone" {
  bucket = aws_s3_bucket.mybucket.id
  key = "icone.png"
  source = "app/icone.jpg"
  acl = "public-read"
}
resource "aws_s3_bucket_website_configuration" "website" {
  bucket = aws_s3_bucket.mybucket.id
  index_document {
    suffix = "index.html"
  }

  error_document {
    key = "error.html"
  }

  depends_on = [ aws_s3_bucket_acl.example ]
}