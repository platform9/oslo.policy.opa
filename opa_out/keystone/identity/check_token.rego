package identity.check_token

import data.keystone_lib

# Check a token.
# HEAD  /v3/auth/tokens
# Intended scope(s): system, domain, project
# Target attrs: target.token.user.domain.id, target.token.user_id
# "identity:check_token": "rule:admin_required or (role:reader and system_scope:all) or rule:token_subject"

allow if {
	# rule:admin_required
	keystone_lib.admin_required
}

allow if {
	reader_and_creds_system_scope_eq_all
}

allow if {
	# rule:token_subject
	keystone_lib.token_subject
}

# (role:reader and system_scope:all)
reader_and_creds_system_scope_eq_all if {
	"reader" in input.credentials.roles
	input.credentials.system_scope == "all"
}
