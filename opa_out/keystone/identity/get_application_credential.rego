package identity.get_application_credential

import data.keystone_lib

# Show application credential details.
# GET  /v3/users/{user_id}/application_credentials/{application_credential_id}
# HEAD  /v3/users/{user_id}/application_credentials/{application_credential_id}
# Intended scope(s): system, project
# "identity:get_application_credential": "(rule:admin_required) or (role:reader and system_scope:all) or rule:owner"

allow if {
	# rule:admin_required
	keystone_lib.admin_required
}

allow if {
	reader_and_creds_system_scope_eq_all
}

allow if {
	# rule:owner
	keystone_lib.owner
}

# (role:reader and system_scope:all)
reader_and_creds_system_scope_eq_all if {
	"reader" in input.credentials.roles
	input.credentials.system_scope == "all"
}
