data "okta_users" "example" {
  search {
    name       = "profile.lastName"
    value      = "Admin01"
    comparison = "sw"
  }
}
    
resource "okta_group" "terraCreateGroup" {
  name        = "GroupCreatedUsingTerra"
  description = "My Terra Group"
  users = [data.okta_users.example.users.1]
}
