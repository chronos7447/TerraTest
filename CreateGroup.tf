    
resource "okta_group" "terraCreateGroup" {
  name        = "GroupCreatedUsingTerra"
  description = "My Terra Group"
}

resource "okta_group_rule" "example" {
  name              = "example"
  status            = "ACTIVE"
  group_assignments = [okta_group.terraCreateGroup.id]
  expression_type   = "urn:okta:expression:1.0"
  expression_value  = "String.stringContains(toLowerCase(user.role),"testing")"
}
