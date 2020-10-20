
resource "okta_policy_mfa" "TerraMFAPolicy" {
  name        = "TerraMFAPolicy"
  status      = "ACTIVE"
  description = "TerraMFAPolicyExample"

  okta_otp = {
    enroll = "REQUIRED"
  }

  groups_included = ["00gzwvbpeLoYBsD9O4x6"]
}

