package identity.revoke_token

import data.keystone_lib

# Revoke a token.
# DELETE  /v3/auth/tokens
# Intended scope(s): system, domain, project
# Target attrs: target.token.user.domain.id, target.token.user_id
# "identity:revoke_token": "rule:admin_required or rule:token_subject"

allow if {
	# rule:admin_required
	keystone_lib.admin_required
}

allow if {
	# rule:token_subject
	keystone_lib.token_subject
}
