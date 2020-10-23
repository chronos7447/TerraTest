resource "okta_policy_signon" "SignOn" {
  name            = "Administrators"
  status          = "ACTIVE"
  description     = "Sign On Policy for Administrators"
  groups_included = [okta_group.CreateGroup.id]
}

resource "okta_policy_rule_signon" "SignOnRule" {
  policyid = join("",[okta_policy_signon.SignOn.id])
  name = "Second Factor Enforcement Rule "
  access = "ALLOW"
  mfa_required = "true"
  mfa_prompt = "ALWAYS"
  status = "ACTIVE"
  session_idle = "15"
  session_lifetime = "15" 
}

resource "okta_policy_rule_signon" "SignOnRuleNetwork" {
  policyid = join("",[okta_policy_signon.SignOn.id])
  name = "Network Zone Restriction Rule "
  network_connection = "ZONE"
  network_excludes = [okta_network_zone.AIG.id, okta_network_zone.AIG_Corporate.id]
  access = "DENY"
  priority = "1"
}

data "okta_policy" "Default" {
  name = "Default Policy"
  type = "OKTA_SIGN_ON"
}


resource "okta_policy_rule_signon" "SignOnRuleNetwork02" {
  policyid = join("",[data.okta_policy.Default.id])
  name = "Network Zone Restriction Rule "
  network_connection = "ZONE"
  network_includes = [] 
  access = "DENY"
  priority = "1"
}
