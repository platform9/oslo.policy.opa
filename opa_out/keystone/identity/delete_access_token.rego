package identity.delete_access_token

import data.lib

# Delete OAUTH1 access token.
# DELETE  /v3/users/{user_id}/OS-OAUTH1/access_tokens/{access_token_id}
# Intended scope(s): project
#"identity:delete_access_token": "rule:admin_required"


allow if {
  lib.admin_required
}

