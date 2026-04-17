package identity.list_trusts_for_trustor

import data.keystone_lib

# List trusts for trustor.
# GET  /v3/OS-TRUST/trusts?trustor_user_id={trustor_user_id}
# HEAD  /v3/OS-TRUST/trusts?trustor_user_id={trustor_user_id}
# Intended scope(s): system, project
# "identity:list_trusts_for_trustor": "(rule:admin_required) or (role:reader and system_scope:all or user_id:%(target.trust.trustor_user_id)s)"

allow if {
	# rule:admin_required
	keystone_lib.admin_required
}

allow if {
	reader_and_creds_system_scope_eq_all_or_creds_user_id_eq_input_target_trust_trustor_user_id
}

# (role:reader and system_scope:all)
reader_and_creds_system_scope_eq_all if {
	"reader" in input.credentials.roles
	input.credentials.system_scope == "all"
}

# ((role:reader and system_scope:all) or user_id:%(target.trust.trustor_user_id)s)
reader_and_creds_system_scope_eq_all_or_creds_user_id_eq_input_target_trust_trustor_user_id if {
	reader_and_creds_system_scope_eq_all
}

# ((role:reader and system_scope:all) or user_id:%(target.trust.trustor_user_id)s)
reader_and_creds_system_scope_eq_all_or_creds_user_id_eq_input_target_trust_trustor_user_id if {
	# user_id:%(target.trust.trustor_user_id)s
	input.credentials.user_id == input.target["target.trust.trustor_user_id"]
}
