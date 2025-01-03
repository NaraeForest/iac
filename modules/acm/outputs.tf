output "aws_acm_records" {
  value = [for record in cloudflare_record.validation_records : record.hostname]
}

output "aws_acm_certificate_arn" {
  value = aws_acm_certificate.domain_certificate.arn
}
