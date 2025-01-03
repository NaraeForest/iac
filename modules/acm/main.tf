terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
    }
    cloudflare = {
      source = "cloudflare/cloudflare"
    }
  }
}

resource "aws_acm_certificate" "domain_certificate" {
  domain_name       = var.domain_name
  validation_method = "DNS"
  lifecycle {
    create_before_destroy = true
  }
}

resource "cloudflare_dns_record" "validation_records" {
  for_each = {
    for dvo in aws_acm_certificate.domain_certificate.domain_validation_options : dvo.domain_name => {
      type    = dvo.resource_record_type
      name    = dvo.resource_record_name
      content = dvo.resource_record_value
    }
  }
  zone_id = var.zone_id
  proxied = false
  type    = each.value.type
  name    = each.value.name
  content = each.value.content
  ttl     = 1
  comment = "Managed with terraform."
}

resource "aws_acm_certificate_validation" "domain_validation" {
  certificate_arn         = aws_acm_certificate.domain_certificate.arn
  validation_record_fqdns = [for record in cloudflare_dns_record.validation_records : record.name]
}
