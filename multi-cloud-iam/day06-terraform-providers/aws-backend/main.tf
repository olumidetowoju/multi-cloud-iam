resource "aws_s3_bucket" "state" {
  bucket = "mc-iam-tfstate-olumide"
  force_destroy = true
}
resource "aws_s3_bucket_versioning" "v" {
  bucket = aws_s3_bucket.state.id
  versioning_configuration { status = "Enabled" }
}
resource "aws_dynamodb_table" "lock" {
  name         = "mc-iam-tflock"
  billing_mode = "PAY_PER_REQUEST"
  hash_key     = "LockID"
  attribute { name = "LockID" type = "S" }
}
