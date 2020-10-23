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
  users = [okta_user.User01.id, okta_user.User02.id, okta_user.User03.id]
}

resource "okta_group_roles" "AdminRoletoL3" {
  group_id    = tostring(okta_group.CreateGroup.id)
  admin_roles = ["SUPER_ADMIN"]
}







################# HELP DESK USERS #####################################


resource "okta_user" "User04" {
  email       = "HelpUser01@mail.com"
  login       = "HelpUser01@mail.com"
  first_name        = "Help"
  last_name = "User01"
  status    = "ACTIVE"
  password  = "George01"
}

resource "okta_user" "User05" {
  email       = "HelpUser02@mail.com"
  login       = "HelpUser02@mail.com"
  first_name        = "Help"
  last_name = "User02"
}

resource "okta_user" "User06" {
  email       = "HelpUser03@mail.com"
  login       = "HelpUser03@mail.com"
  first_name        = "Help"
  last_name = "User03"
}

resource "okta_group" "CreateGroup01" {
  name        = "CIAM-HelpDesk"
  description = "AIG Help Desk Group"
  users = [okta_user.User04.id, okta_user.User05.id, okta_user.User06.id]
}

resource "okta_group_roles" "AdminRoletoHelpDesk" {
  group_id    = tostring(okta_group.CreateGroup01.id)
  admin_roles = ["SUPER_ADMIN"]
}






