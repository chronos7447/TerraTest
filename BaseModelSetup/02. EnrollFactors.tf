resource "okta_factor" "factor_enable" {
  provider_id = "okta_otp"
  active = "true"
}

resource "okta_factor" "factor_enable01" {
  provider_id = "okta_push"
  active = "true"
}

resource "okta_factor" "factor_enable02" {
  provider_id = "okta_sms"
  active = "true"
}

resource "okta_factor" "factor_enable03" {
  provider_id = "okta_call"
  active = "true"
}

resource "okta_factor" "factor_enable04" {
  provider_id = "google_otp"
  active = "true"
}

#resource "okta_factor" "factor_enable05" {
  #provider_id = "duo"
  #active = "true"
#}

#resource "okta_factor" "factor_enable06" {
 # provider_id = "fido_webauthn"
 # active = "true"

#}
