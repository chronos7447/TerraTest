data "okta_users" "example" {
  search {
    name       = "profile.role"
    value      = "Testing"
    comparison = "sw"
  }
}
