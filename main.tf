module "global_acm" {
  source      = "./modules/acm"
  domain_name = "narumir.io"
  zone_id     = var.cloudflare_zone_id
  providers = {
    aws        = aws.global
    cloudflare = cloudflare
  }
}
