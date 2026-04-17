package identity.list_credentials

import data.keystone_lib

# List credentials.
# GET  /v3/credentials
# Intended scope(s): system, domain, project
# Target attrs: target.credential.encrypted_blob, target.credential.extra, target.credential.id, target.credential.key_hash, target.credential.project_id, target.credential.type, target.credential.user_id
# "identity:list_credentials": "(rule:admin_required) or (role:reader and system_scope:all) or user_id:%(target.credential.user_id)s"

allow if {
	# rule:admin_required
	keystone_lib.admin_required
}

allow if {
	reader_and_creds_system_scope_eq_all
}

allow if {
	# user_id:%(target.credential.user_id)s
	input.credentials.user_id == input.target["target.credential.user_id"]
}

# (role:reader and system_scope:all)
reader_and_creds_system_scope_eq_all if {
	"reader" in input.credentials.roles
	input.credentials.system_scope == "all"
}
