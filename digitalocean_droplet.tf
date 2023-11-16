resource "digitalocean_droplet" "node" {
  name   = "eth2-on-near-client-validator-${var.do_droplet_region}-${count.index + 1}"
  image  = var.do_droplet_image
  region = var.do_droplet_region
  size   = var.do_droplet_size
  count  = var.do_droplet_count
  tags   = ["node"]
  ssh_keys = [
    digitalocean_ssh_key.default.id
  ]
  lifecycle {
    create_before_destroy = true
  }
}
