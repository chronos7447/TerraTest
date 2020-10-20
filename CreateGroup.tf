resource "okta_group" "terraCreateGroup" {
  name        = "GroupCreatedUsingTerra"
  description = "My Terra Group"
  users = [okta_users.example]
}
