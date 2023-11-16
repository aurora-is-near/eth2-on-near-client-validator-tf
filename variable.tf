variable "do_token" {
  type      = string
  sensitive = true
}
variable "do_ssh_key_path" {
  type        = string
  default     = "~/.ssh/id_ed25519.pub"
  description = "SSH key used to access droplet"
}
variable "do_droplet_image" {
  type        = string
  default     = "ubuntu-22-04-x64"
  description = "DO droplet image slug"
}
variable "do_droplet_region" {
  type        = string
  default     = "lon1"
  description = "DO droplet region slug"
}
variable "do_droplet_size" {
  type        = string
  default     = "c2-2vcpu-4gb"
  description = "DO droplet size slug"
}
variable "do_droplet_count" {
  type    = number
  default = 1
  description = "DO droplet count"
}

