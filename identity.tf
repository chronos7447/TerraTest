variable "org_name" {}
variable "api_token" {}
variable "base_url" {}

provider "okta" {
    org_name = var.org_name
    base_url = var.base_url
    api_token = var.api_token
}

resource "okta_user_schema" "terratest_extension_dev" {
  index  = "terra_cloud_var_dev"
  title  = "Terra Test Cloud dev"
  type   = "string"
  master = "PROFILE_MASTER"
}

resource "okta_user_schema" "terratest_extension" {
  index  = "terra_cloud_var"
  title  = "Terra Test Cloud"
  type   = "string"
  master = "PROFILE_MASTER"
}
