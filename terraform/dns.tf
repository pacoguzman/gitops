resource "digitalocean_domain" "gitops" {
  name = var.top_level_domain
}

resource "digitalocean_record" "caa" {
  domain = digitalocean_domain.gitops.name
  name   = "@"
  value  = "letsencrypt.org."
  type   = "CAA"

  ttl = 3600
  flags = 0
  tag = "issue"
}
