package identity.delete_trust

import data.keystone_lib

# Revoke trust.
# DELETE  /v3/OS-TRUST/trusts/{trust_id}
# Intended scope(s): system, project
# Target attrs: target.trust.deleted_at, target.trust.expires_at, target.trust.expires_at_int, target.trust.extra, target.trust.id, target.trust.impersonation, target.trust.project_id, target.trust.redelegated_trust_id, target.trust.redelegation_count, target.trust.remaining_uses, target.trust.trustee_user_id, target.trust.trustor_user_id
# "identity:delete_trust": "rule:admin_required or user_id:%(target.trust.trustor_user_id)s"

allow if {
	# rule:admin_required
	keystone_lib.admin_required
}

allow if {
	# user_id:%(target.trust.trustor_user_id)s
	input.credentials.user_id == input.target["target.trust.trustor_user_id"]
}
