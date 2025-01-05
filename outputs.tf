output "narae_content_access_key" {
  value     = module.cdn_user.s3_uploader_access_key
  sensitive = true
}

output "narae_content_secret_key" {
  value     = module.cdn_user.s3_uploader_secret_key
  sensitive = true
}
