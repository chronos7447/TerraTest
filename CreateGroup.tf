data "okta_users" "example" {
  search {
    name       = "profile.role"
    value      = "Testing"
    comparison = "sw"
  }
}

resource "okta_group" "terraCreateGroup" {
  name        = "GroupCreatedUsingTerra"
  description = "My Terra Group"
  depends_on = [okta_users.example]
}
