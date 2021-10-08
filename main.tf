provider "vsphere" {
  user                 = var.provider_vsphere_username
  password             = var.provider_vsphere_password
  vsphere_server       = var.provider_vsphere_host
  allow_unverified_ssl = true
}

# module "globals" {
#   source = "./globals"
# }

module "dcs" {
  source = "./production/dcs"
}
