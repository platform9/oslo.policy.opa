package identity.delete_trust

import data.lib

# Revoke trust.
# DELETE  /v3/OS-TRUST/trusts/{trust_id}
# Intended scope(s): system, project
#"identity:delete_trust": "rule:admin_required or user_id:%(target.trust.trustor_user_id)s"


allow if {
  #rule:admin_required
lib.admin_required
}

allow if {
  creds_user_id_eq_input_target_trust_trustor_user_id
}

#user_id:%(target.trust.trustor_user_id)s
creds_user_id_eq_input_target_trust_trustor_user_id if {
  input.credentials.user_id == input.target.target.trust.trustor_user_id
}

#user_id:%(target.trust.trustor_user_id)s
creds_user_id_eq_input_target_trust_trustor_user_id if {
  input.credentials.user_id == input.target["target.trust.trustor_user_id"]
}

