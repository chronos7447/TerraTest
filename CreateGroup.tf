    
resource "okta_group" "terraCreateGroup" {
  name        = "GroupCreatedUsingTerra"
  description = "My Terra Group"
}

resource "okta_group_rule" "terraCreateGroupRule" {
  name              = "terraCreateGroupRule"
  status            = "ACTIVE"
  group_assignments = [okta_group.terraCreateGroup.id]
  expression_type   = "urn:okta:expression:1.0"
  expression_value  = "String.stringContains(toLowerCase(user.role),\"testing\")"
}


resource "okta_group" "terraCreateGroup01" {
  name        = "GroupCreatedUsingTerra01"
  description = "My Terra Group01"
}

resource "okta_group_rule" "terraCreateGroupRule01" {
  name              = "terraCreateGroupRule01"
  status            = "ACTIVE"
  group_assignments = [okta_group.terraCreateGroup01.id]
  expression_type   = "urn:okta:expression:1.0"
  expression_value  = "String.stringContains(toLowerCase(user.role),\"testing\")"
}

