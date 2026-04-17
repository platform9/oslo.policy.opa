package identity.list_trusts_for_trustee

import data.keystone_lib

# List trusts for trustee.
# GET  /v3/OS-TRUST/trusts?trustee_user_id={trustee_user_id}
# HEAD  /v3/OS-TRUST/trusts?trustee_user_id={trustee_user_id}
# Intended scope(s): system, project
# "identity:list_trusts_for_trustee": "(rule:admin_required) or (role:reader and system_scope:all or user_id:%(target.trust.trustee_user_id)s)"

allow if {
	# rule:admin_required
	keystone_lib.admin_required
}

allow if {
	reader_and_creds_system_scope_eq_all_or_creds_user_id_eq_input_target_trust_trustee_user_id
}

# (role:reader and system_scope:all)
reader_and_creds_system_scope_eq_all if {
	"reader" in input.credentials.roles
	input.credentials.system_scope == "all"
}

# ((role:reader and system_scope:all) or user_id:%(target.trust.trustee_user_id)s)
reader_and_creds_system_scope_eq_all_or_creds_user_id_eq_input_target_trust_trustee_user_id if {
	reader_and_creds_system_scope_eq_all
}

# ((role:reader and system_scope:all) or user_id:%(target.trust.trustee_user_id)s)
reader_and_creds_system_scope_eq_all_or_creds_user_id_eq_input_target_trust_trustee_user_id if {
	# user_id:%(target.trust.trustee_user_id)s
	input.credentials.user_id == input.target["target.trust.trustee_user_id"]
}
