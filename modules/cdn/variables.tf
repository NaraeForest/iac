variable "bucket_name" {
  type = string
}

variable "zone_id" {
  type        = string
  description = "Cloudflare's zone id"
}

variable "domain_name" {
  type = string
}

variable "fqdn_domain_name" {
  type = string
}

variable "aws_acm_certificate_arn" {
  type = string
}
