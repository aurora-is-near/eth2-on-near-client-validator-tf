output "droplet_ip" {
  value = digitalocean_droplet.node.*.ipv4_address
  description = "The IP addresses of droplet instances."
}

output "droplet_public_key" {
  value = digitalocean_ssh_key.default.public_key
  description = "The SSH public key for access."
}
