resource "okta_policy_password" "PassPolicy" {
  name                   = "Administrator"
  status                 = "ACTIVE"
  description            = "terraPassPolicyExample"
  auth_provide = "OKTA"
  password_min_lenght = 8
  password_min_lowercase = "true"
  password_min_uppercase = "true"
  password_min_number = "true"
  password_min_symbol = "true"
  password_exclude_username = "true"
  password_exclude_first_name = "true"
  password_exclude_last_name = "true"
  password_dictionary_lookup  = "true"
  password_history_count = 4
  password_max_age_days = 90
  password_expire_warn_days = 5
  password_max_lockout_attempts = 6
  groups_included        = [okta_group.CreateGroup.id]
  question_recovery = "INACTIVE"
}

resource "okta_policy_rule_password" "PassPolicyRule" {
  policyid = join("",[okta_policy_password.PassPolicy.id])
  name = "Password/Account Self Service Rule"
  status = "ACTIVE"
}
