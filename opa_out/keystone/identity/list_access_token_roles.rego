package identity.list_access_token_roles

import data.keystone_lib

# List OAUTH1 access token roles.
# GET  /v3/users/{user_id}/OS-OAUTH1/access_tokens/{access_token_id}/roles
# Intended scope(s): project
# "identity:list_access_token_roles": "rule:admin_required"

allow if {
	keystone_lib.admin_required
}
