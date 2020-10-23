resource "okta_user" "User01" {
  email       = "AdminUser01@mail.com"
  login       = "AdminUser01@mail.com"
  first_name        = "Admin"
  last_name = "User01"
  status    = "ACTIVE"
  password  = "George01"
}

resource "okta_user" "User02" {
  email       = "AdminUser02@mail.com"
  login       = "AdminUser02@mail.com"
  first_name        = "Admin"
  last_name = "User02"
}

resource "okta_user" "User03" {
  email       = "AdminUser03@mail.com"
  login       = "AdminUser03@mail.com"
  first_name        = "Admin"
  last_name = "User03"
}

resource "okta_group" "CreateGroup" {
  name        = "CIAM-dev01-apac-L3-Engineer"
  description = "AIG L3 Engineer Group"
  users = [okta_user.User03.id]
}
