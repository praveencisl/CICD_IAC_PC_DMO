provider "aws" {
  region = "eu-west-1"
}

resource "aws_s3_bucket" "dev_s3" {
  bucket_prefix = "dev-"

  tags = {
    Environment          = "Dev"
    yor_name             = "dev_s3"
    yor_trace            = "198b50c5-8800-4d4c-9868-27eed75ee428"
    git_commit           = "e4471f2eb72c22def47318bef313877e01aa63cc"
    git_file             = "code/build/s3.tf"
    git_last_modified_at = "2024-12-19 12:34:59"
    git_last_modified_by = "jothimsnp@gmail.com"
    git_modifiers        = "jothimsnp"
    git_org              = "praveencisl"
    git_repo             = "CICD_IAC_PC_DMO"
  }
}

resource "aws_s3_bucket_ownership_controls" "dev_s3" {
  bucket = aws_s3_bucket.dev_s3.id
  rule {
    object_ownership = "BucketOwnerPreferred"
  }
}
