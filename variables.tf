variable "provider_vsphere_host" {
  description = "vCenter server FQDN or IP"
}
variable "provider_vsphere_password" {
  sensitive = true
}
variable "provider_vsphere_username" {
}
