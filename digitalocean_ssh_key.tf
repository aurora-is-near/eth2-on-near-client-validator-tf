resource "digitalocean_ssh_key" "default" {
  name       = "eth2-on-near-client-validator-ssh-key"
  public_key = file(var.do_ssh_key_path)
}
