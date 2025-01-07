variable "bucket_name" {
  type        = string
  description = "S3 버킷 이름"
}

variable "zone_id" {
  type        = string
  description = "cloudflare에서 제공하는 dns zone id"
}

variable "domain_name" {
  type        = string
  description = "루트 도메인 주소, 모든 서브 도메인에 cors 적용"
}

variable "fqdn_domain_name" {
  type        = string
  description = "cdn에 연결될 fqdn 도메인 주소"
}

variable "aws_acm_certificate_arn" {
  type        = string
  description = "aws us-east-1에서 발급 받은 acm arn"
}
