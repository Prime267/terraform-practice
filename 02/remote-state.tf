resource "aws_s3_bucket" "tf-state-storage-t02" {
    bucket = "tf-state-storage-for-prectice-t02"
    versioning {
      enabled = true
    }
    lifecycle {
      prevent_destroy = true
    }
}

# create a dynamodb table for locking the state file
resource "aws_dynamodb_table" "dynamodb-terraform-state-lock-t02" {
  name = "terraform-state-lock-for-prectice-t02"
  hash_key = "LockID"
  read_capacity = 20
  write_capacity = 20
attribute {
    name = "LockID"
    type = "S"
  }
}