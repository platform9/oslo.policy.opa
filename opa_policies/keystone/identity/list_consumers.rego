package identity.list_consumers

import data.keystone_lib

# List OAUTH1 consumers.
# GET  /v3/OS-OAUTH1/consumers
# Intended scope(s): system, project
# "identity:list_consumers": "rule:admin_required or (role:reader and system_scope:all)"

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
