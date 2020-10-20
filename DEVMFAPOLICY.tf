resource "okta_policy_mfa" "TerraMFAPolicy" {
  name        = "TerraMFAPolicy"
  status      = "ACTIVE"
  description = "TerraMFAPolicyExample"

  okta_otp = {
    enroll = "REQUIRED"
  }

  groups_included = ["00gzwvbpeLoYBsD9O4x6"]
}

resource "okta_policy_rule_mfa" "TerraMFARule" {
  policyid = "00p17l45g9kcvT3xU4x7"
  name = "TerraMFARule"
  status = "ACTIVE"
  enroll = "CHALLENGE"
  
}
  
