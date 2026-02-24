package identity.create_trust

# Create trust.
# POST  /v3/OS-TRUST/trusts
# Intended scope(s): project
#"identity:create_trust": "user_id:%(trust.trustor_user_id)s"


allow if {
  input.credentials.user_id == input.target.trust.trustor_user_id
}

allow if {
  input.credentials.user_id == input.target["trust.trustor_user_id"]
}

