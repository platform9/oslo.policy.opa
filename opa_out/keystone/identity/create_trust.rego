package identity.create_trust

# Create trust.
# POST  /v3/OS-TRUST/trusts
# Intended scope(s): project
# Target attrs: target.trust.deleted_at, target.trust.expires_at, target.trust.expires_at_int, target.trust.extra, target.trust.id, target.trust.impersonation, target.trust.project_id, target.trust.redelegated_trust_id, target.trust.redelegation_count, target.trust.remaining_uses, target.trust.trustee_user_id, target.trust.trustor_user_id
# "identity:create_trust": "user_id:%(trust.trustor_user_id)s"

allow if {
	input.credentials.user_id == input.target["trust.trustor_user_id"]
}
