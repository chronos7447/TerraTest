resource "okta_user" "User01" {
  email       = "AdminUser01@mail.com"
  login       = "AdminUser01@mail.com"
  first_name        = "Admin"
  last_name = "User01"
  status    = "ACTIVE"
  password  = "George01"
}
