resource "okta_factor" "factor_enable" {
  provider_id = "okta_otp"
  active = "true"
}

resource "okta_factor" "factor_enable01" {
  provider_id = "okta_push"
  active = "true"
}

resource "okta_factor" "factor_enable02" {
  provider_id = "okta_sms"
  active = "true"
}

resource "okta_factor" "factor_enable03" {
  provider_id = "okta_call"
  active = "true"
}

resource "okta_factor" "factor_enable04" {
  provider_id = "google_otp"
  active = "true"
}

resource "okta_factor" "factor_enable05" {
  provider_id = "duo"
  active = "true"
}

#resource "okta_factor" "factor_enable06" {
 # provider_id = "fido_webauthn"
 # active = "true"
#}



resource "okta_policy_mfa" "MFAPolicy" {
  name        = "Administrator"
  status      = "ACTIVE"
  description = "MFA Policy for Administrators "

  okta_otp = {
    enroll = "REQUIRED"
  }
  okta_push = {
    enroll = "REQUIRED"
  }
  groups_included = [okta_group.CreateGroup.id]
}

resource "okta_policy_rule_mfa" "MFARule" {
  policyid = join("",[okta_policy_mfa.MFAPolicy.id])
  name = "Second Factor Enrollment Rule"
  status = "ACTIVE"
  enroll = "CHALLENGE" 
}
