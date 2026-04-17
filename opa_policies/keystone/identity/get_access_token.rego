package identity.get_access_token

import data.keystone_lib

# Get OAUTH1 access token for user by access token ID.
# GET  /v3/users/{user_id}/OS-OAUTH1/access_tokens/{access_token_id}
# Intended scope(s): project
# "identity:get_access_token": "rule:admin_required"

allow if {
	keystone_lib.admin_required
}
