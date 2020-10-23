
resource "okta_policy_mfa" "MFAPolicy" {
  name        = "Administrator"
  status      = "ACTIVE"
  description = "MFA Policy for Administrators "

  okta_otp = {
    enroll = "REQUIRED"
    okta_push = "REQUIRED"
  }
  #okta_push = {
    #enroll = "REQUIRED"
 # }
 
  groups_included = [okta_group.CreateGroup.id]
}

resource "okta_policy_rule_mfa" "MFARule" {
  policyid = join("",[okta_policy_mfa.MFAPolicy.id])
  name = "Second Factor Enrollment Rule"
  status = "ACTIVE"
  enroll = "CHALLENGE" 
}
