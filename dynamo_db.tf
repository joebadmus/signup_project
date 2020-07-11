resource "aws_dynamodb_table" "dynamo-user-signup" {
  name             = "dev-user-signup-dynamo"
  hash_key         = "email"
  billing_mode     = "PAY_PER_REQUEST"
  stream_enabled   = true
  stream_view_type = "NEW_AND_OLD_IMAGES"

  attribute {
    name = "email"
    type = "S"
  }

  tags = {
    Name        = "DynamoDB User Signup App"
    Environment = "dev"
  }
}
