resource "okta_policy_password" "terraPassPolicy" {
  name                   = "terraPassPolicy"
  status                 = "ACTIVE"
  description            = "terraPassPolicyExample"
  password_history_count = 4
  groups_included        = [okta_group.terraCreateGroup.id]
  sms_recovery           = "ACTIVE"
}

resource "okta_policy_rule_password" "terraPassPolicyRule" {
  policyid = join("",[okta_policy_password.terraPassPolicy.id])
  name = "terraPassPolicyRule"
  status = "ACTIVE"
  password_unlock = "ALLOW"
}
