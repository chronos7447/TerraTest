resource "okta_policy_mfa" "TerraMFAPolicy" {
  name        = "TerraMFAPolicy"
  status      = "ACTIVE"
  description = "TerraMFAPolicyExample"

  okta_otp = {
    enroll = "REQUIRED"
  }

  groups_included = [okta_group.terraCreateGroup.id]
}

resource "okta_policy_rule_mfa" "TerraMFARule" {
  policyid = tostring([okta_policy_mfa.TerraMFAPolicy.id])
  name = "TerraMFARule"
  status = "ACTIVE"
  enroll = "CHALLENGE"
  
}
  
