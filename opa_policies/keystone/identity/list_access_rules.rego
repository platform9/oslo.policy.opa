package identity.list_access_rules

# List access rules for a user.
# GET  /v3/users/{user_id}/access_rules
# HEAD  /v3/users/{user_id}/access_rules
# Intended scope(s): system, project
# "identity:list_access_rules": "(role:reader and system_scope:all) or user_id:%(target.user.id)s"

allow if {
	reader_and_creds_system_scope_eq_all
}

allow if {
	# user_id:%(target.user.id)s
	input.credentials.user_id == input.target["target.user.id"]
}

# (role:reader and system_scope:all)
reader_and_creds_system_scope_eq_all if {
	"reader" in input.credentials.roles
	input.credentials.system_scope == "all"
}
