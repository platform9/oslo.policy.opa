package identity.list_trusts

import data.keystone_lib

# List trusts.
# GET  /v3/OS-TRUST/trusts
# HEAD  /v3/OS-TRUST/trusts
# Intended scope(s): system, project
# Target attrs: target.trust.deleted_at, target.trust.expires_at, target.trust.expires_at_int, target.trust.extra, target.trust.id, target.trust.impersonation, target.trust.project_id, target.trust.redelegated_trust_id, target.trust.redelegation_count, target.trust.remaining_uses, target.trust.trustee_user_id, target.trust.trustor_user_id
# "identity:list_trusts": "rule:admin_required or (role:reader and system_scope:all)"

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
