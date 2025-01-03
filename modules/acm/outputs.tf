output "aws_acm_records" {
  value = [for record in cloudflare_dns_record.validation_records : record.name]
}

