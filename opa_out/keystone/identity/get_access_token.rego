package identity.get_access_token

import data.lib

# Get OAUTH1 access token for user by access token ID.
# GET  /v3/users/{user_id}/OS-OAUTH1/access_tokens/{access_token_id}
# Intended scope(s): project
#"identity:get_access_token": "rule:admin_required"


allow if {
  lib.admin_required
}

