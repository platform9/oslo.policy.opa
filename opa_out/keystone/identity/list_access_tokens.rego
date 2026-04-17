package identity.list_access_tokens

import data.keystone_lib

# List OAUTH1 access tokens for user.
# GET  /v3/users/{user_id}/OS-OAUTH1/access_tokens
# Intended scope(s): project
# "identity:list_access_tokens": "rule:admin_required"

allow if {
	keystone_lib.admin_required
}
