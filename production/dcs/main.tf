
module "production" {
  source                      = "../../modules/env-production"
  deploy_vsphere_tag_category = "Terraform-PROD"
  deploy_vsphere_tag          = "Terraform-PROD"
}

module "vps_clustered" {
  source                     = "../../modules/vps-clustered"
  tag_id                     = module.production.vsphere_tag_id
  deploy_vsphere_datastore   = "AL001-Local-DataStore01"
  deploy_vsphere_datacenter  = "ALW"
  template_vm                = "alw_2019_gui"
  deploy_vsphere_network     = "ANDCserver06"
  deploy_vsphere_cluster     = "ALWCLESX001"
  instance_count             = 2
  vm_name_prefix             = "ANXDC00"
  previous_server_index      = 0
  vm_folder                  = "AL-Local-VMs"
  guest_vcpu                 = 4
  guest_memory               = 8196
  ip_first_address           = 11
  domain_selector            = "XMA"
  guest_local_admin_username = local.guest_local_admin_username
  guest_local_admin_password = local.guest_local_admin_password
  domain_logon               = local.domain_logon_xma
  domain_password            = local.domain_password_xma
}
