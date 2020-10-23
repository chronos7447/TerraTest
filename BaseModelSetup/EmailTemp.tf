# Paid Version
'''
resource "okta_template_email" "Temp01_ForgotPass" {
  type = "email.forgotPassword"

  translations {
    language = "en"
    subject  = "Stuff"
    template = "Hi $${user.firstName},<br/><br/>We Will Reset Your Password $${resetPasswordLink}"
  }

  translations {
    language = "es"
    subject  = "Cosas"
    template = "Hola $${user.firstName},<br/><br/>Password Change Link Amigo $${resetPasswordLink}"
  }
}
'''
