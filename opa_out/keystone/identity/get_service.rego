package identity.get_service

import data.keystone_lib

# Show service details.
# GET  /v3/services/{service_id}
# Intended scope(s): system, project
# "identity:get_service": "rule:admin_required or (role:reader and system_scope:all)"

allow if {
	# rule:admin_required
	keystone_lib.admin_required
}

allow if {
	reader_and_creds_system_scope_eq_all
}

# (role:reader and system_scope:all)
reader_and_creds_system_scope_eq_all if {
	"reader" in input.credentials.roles
	input.credentials.system_scope == "all"
}
