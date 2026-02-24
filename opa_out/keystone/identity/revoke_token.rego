package identity.revoke_token

import data.lib

# Revoke a token.
# DELETE  /v3/auth/tokens
# Intended scope(s): system, domain, project
#"identity:revoke_token": "rule:admin_required or rule:token_subject"


allow if {
  #rule:admin_required
lib.admin_required
}

allow if {
  #rule:token_subject
lib.token_subject
}

