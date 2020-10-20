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

resource "okta_user_schema" "crn_extension" {
  index  = "customer_reference_number"
  title  = "Customer Reference Number"
  required = true
  type   = "string"
  master = "PROFILE_MASTER"
  depends_on = [okta_user_schema.terratest_extension_dev]
}
data "okta_users" "example" {
  search {
    name       = "profile.role"
    value      = "Testing"
    comparison = "sw"
  }
}
    
resource "okta_group" "terraCreateGroup" {
  name        = "GroupCreatedUsingTerra"
  description = "My Terra Group"
  users = [data.okta_users.example.users]
}
