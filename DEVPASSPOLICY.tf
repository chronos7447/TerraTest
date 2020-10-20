resource "okta_policy_password" "terraPassPolicy" {
  name                   = "terraPassPolicy"
  status                 = "ACTIVE"
  description            = "terraPassPolicyExample"
  password_history_count = 4
  groups_included        = ["00gzwvbpeLoYBsD9O4x6"]
  sms_recovery           = "ACTIVE"
}

resource "okta_policy_rule_password" "terraPassPolicyRule" {
  policyid = "00p17lawagm1iQHvq4x7"
  name = "terraPassPolicyRule"
  status = "ACTIVE"
  password_unlock - "ALLOW"
}
