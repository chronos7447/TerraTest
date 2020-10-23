resource "okta_policy_password" "PassPolicy" {
  name                   = "Administrator"
  priority = "1"
  status                 = "ACTIVE"
  description            = "Password Policy for Administrators"
  auth_provider = "OKTA"
  password_min_length = 8
  password_min_lowercase = "1"
  password_min_uppercase = "1"
  password_min_number = "1"
  password_min_symbol = "1"
  password_exclude_username = "true"
  password_exclude_first_name = "true"
  password_exclude_last_name = "true"
  password_dictionary_lookup  = "true"
  password_history_count = 4
  password_max_age_days = 90
  password_expire_warn_days = 5
  password_max_lockout_attempts = 6
  groups_included        = [okta_group.CreateGroup.id]
}

resource "okta_policy_rule_password" "PassPolicyRule" {
  policyid = join("",[okta_policy_password.PassPolicy.id])
  name = "Password/Account Self Service Rule"
  status = "ACTIVE"
  password_change = "DENY"
  password_reset = "DENY"
  password_unlock = "DENY"
}


resource "okta_policy_password" "PassPolicy01" {
  name                   = "Customers"
  status                 = "ACTIVE"
  description            = "Password Policy For Customers"
  auth_provider = "OKTA"
  password_min_length = 8
  password_min_lowercase = "1"
  password_min_uppercase = "1"
  password_min_number = "1"
  password_min_symbol = "1"
  password_exclude_username = "true"
  password_exclude_first_name = "true"
  password_exclude_last_name = "true"
  #password_dictionary_lookup  = "true"
  password_history_count = 1
  #password_max_age_days = 90
  #password_expire_warn_days = 5
  password_max_lockout_attempts = 6
  password_auto_unlock_minutes = 30
  sms_recovery = "ACTIVE"
  email_recovery = "ACTIVE"
  #call_recovery = "ACTIVE"
  #groups_included        = [okta_group.CreateGroup.id]
}


resource "okta_policy_rule_password" "PassPolicyRule01" {
  policyid = join("",[okta_policy_password.PassPolicy01.id])
  name = "Password/Account Self Service Rule"
  status = "ACTIVE"
  password_unlock = "ALLOW"
}


