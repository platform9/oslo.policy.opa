package identity.create_application_credential

# Create an application credential.
# POST  /v3/users/{user_id}/application_credentials
# Intended scope(s): project
#"identity:create_application_credential": "user_id:%(user_id)s"


allow if {
  input.credentials.user_id == input.target.user_id
}

