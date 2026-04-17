package identity.get_role_for_trust

import data.keystone_lib

# Check if trust delegates a particular role.
# GET  /v3/OS-TRUST/trusts/{trust_id}/roles/{role_id}
# HEAD  /v3/OS-TRUST/trusts/{trust_id}/roles/{role_id}
# Intended scope(s): system, project
# "identity:get_role_for_trust": "(rule:admin_required) or (role:reader and system_scope:all or user_id:%(target.trust.trustor_user_id)s or user_id:%(target.trust.trustee_user_id)s)"

allow if {
	# rule:admin_required
	keystone_lib.admin_required
}

allow if {
	reader_and_creds_system_scope_eq_all_or_creds_user_id_eq_input_target_trust_trustor_user_id_or_creds_user_id_eq_input_target_trust_trustee_user_id
}

# (role:reader and system_scope:all)
reader_and_creds_system_scope_eq_all if {
	"reader" in input.credentials.roles
	input.credentials.system_scope == "all"
}

# ((role:reader and system_scope:all) or user_id:%(target.trust.trustor_user_id)s or user_id:%(target.trust.trustee_user_id)s)
reader_and_creds_system_scope_eq_all_or_creds_user_id_eq_input_target_trust_trustor_user_id_or_creds_user_id_eq_input_target_trust_trustee_user_id if {
	reader_and_creds_system_scope_eq_all
}

# ((role:reader and system_scope:all) or user_id:%(target.trust.trustor_user_id)s or user_id:%(target.trust.trustee_user_id)s)
reader_and_creds_system_scope_eq_all_or_creds_user_id_eq_input_target_trust_trustor_user_id_or_creds_user_id_eq_input_target_trust_trustee_user_id if {
	# user_id:%(target.trust.trustor_user_id)s
	input.credentials.user_id == input.target["target.trust.trustor_user_id"]
}

# ((role:reader and system_scope:all) or user_id:%(target.trust.trustor_user_id)s or user_id:%(target.trust.trustee_user_id)s)
reader_and_creds_system_scope_eq_all_or_creds_user_id_eq_input_target_trust_trustor_user_id_or_creds_user_id_eq_input_target_trust_trustee_user_id if {
	# user_id:%(target.trust.trustee_user_id)s
	input.credentials.user_id == input.target["target.trust.trustee_user_id"]
}
