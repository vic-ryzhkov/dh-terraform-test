# 1. Initialize AWS provider
# Note: Set the following parameters as an environment variables or in ~/.terraform/config file 
# AWS_ACCESS_KEY_ID, AWS_SECRET_ACCESS_KEY, AWS_REGION
provider "aws" {

}


# 2. Set name for a new bucket 
# Note: Unique id will be added to the bucket name automatically
resource "aws_s3_bucket" "test_bucket" {
  bucket_prefix = "test-bucket-"
}


# 3. Make it private as an AWS Security Best Practice
resource "aws_s3_bucket_public_access_block" "test_block_public_access" {
  bucket = aws_s3_bucket.test_bucket.id

  block_public_acls       = true
  block_public_policy     = true
  ignore_public_acls      = true
  restrict_public_buckets = true
}


# 4. Create a bucket with a Server-side encryption by default
resource "aws_s3_bucket_server_side_encryption_configuration" "test_encryption" {
  bucket = aws_s3_bucket.test_bucket.id
  
  rule {
    apply_server_side_encryption_by_default {
      sse_algorithm = "AES256"
    }
  }

}

