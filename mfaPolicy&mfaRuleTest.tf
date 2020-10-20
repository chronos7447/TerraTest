variable "org_name" {}
variable "api_token" {}
variable "base_url" {}

provider "okta" {
    org_name = var.org_name
    base_url = var.base_url
    api_token = var.api_token
}

resource "okta_policy_mfa" "TerraMFAPolicy" {
  name        = "TerraMFAPolicy"
  status      = "ACTIVE"
  description = "TerraMFAPolicyExample"

  okta_otp = {
    enroll = "REQUIRED"
  }

  groups_included = ["00gzwvbpeLoYBsD9O4x6"]
}

