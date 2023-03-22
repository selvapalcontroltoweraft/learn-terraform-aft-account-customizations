data "aws_caller_identity" "current" {}

resource "aws_s3_bucket" "sandbox_bucket" {
  bucket = "aft-sandbox-${data.aws_caller_identity.current.account_id}"
  acl    = "private"
}

resource "aws_s3_bucket" "sandbox_bucket1" {
  bucket = "aft-sandbox-acctcust-${data.aws_caller_identity.current.account_id}"
  acl    = "private"
}

resource "aws_s3_bucket" "sandbox_microservice" {
  bucket = "aft-sandbox-acctms-${data.aws_caller_identity.current.account_id}"
  acl    = "private"
}

resource "aws_s3_bucket" "datamesh_microservice" {
  bucket = "aft-sandbox-acctdm-${data.aws_caller_identity.current.account_id}"
  acl    = "private"
}