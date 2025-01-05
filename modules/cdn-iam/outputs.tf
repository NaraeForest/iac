output "s3_uploader_access_key" {
  value     = aws_iam_access_key.s3_uploader.id
  sensitive = true
}

output "s3_uploader_secret_key" {
  value     = aws_iam_access_key.s3_uploader.secret
  sensitive = true
}
