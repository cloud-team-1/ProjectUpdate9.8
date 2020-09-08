
resource "aws_route53_record" "www" {
  zone_id = "Z07327922LGUNSOZJDMI"
  name    = "www.radyzone.com"
  type    = "A"
  alias {
    name                   = aws_lb.web-tier-lb.dns_name
    zone_id                = aws_lb.web-tier-lb.zone_id
    evaluate_target_health = true
  }
}