package identity.get_access_token_role

import data.lib

# Get role for user OAUTH1 access token.
# GET  /v3/users/{user_id}/OS-OAUTH1/access_tokens/{access_token_id}/roles/{role_id}
# Intended scope(s): project
#"identity:get_access_token_role": "rule:admin_required"


allow if {
  lib.admin_required
}

