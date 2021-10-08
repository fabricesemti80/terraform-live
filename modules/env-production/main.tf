module "tag-assignment" {
  source                        = "../../modules/tag-assignment"
  deploy_vsphere_tag_category   = var.deploy_vsphere_tag_category
  deploy_vsphere_tag            = var.deploy_vsphere_tag
  deploy_vsphere_tag_decription = "Terraform - PRODUCTION DEPLOYMENT" #! this overrides the default found in the "tag-assignment" module
}
