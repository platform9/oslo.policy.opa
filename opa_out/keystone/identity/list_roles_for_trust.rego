package identity.list_roles_for_trust

import data.lib

# List roles delegated by a trust.
# GET  /v3/OS-TRUST/trusts/{trust_id}/roles
# HEAD  /v3/OS-TRUST/trusts/{trust_id}/roles
# Intended scope(s): system, project
#"identity:list_roles_for_trust": "(rule:admin_required) or (role:reader and system_scope:all or user_id:%(target.trust.trustor_user_id)s or user_id:%(target.trust.trustee_user_id)s)"


allow if {
  #rule:admin_required
lib.admin_required
}

allow if {
  reader_and_creds_system_scope_eq_all_or_creds_user_id_eq_input_target_trust_trustor_user_id_or_creds_user_id_eq_input_target_trust_trustee_user_id
}

#(role:reader and system_scope:all)
reader_and_creds_system_scope_eq_all if {
  "reader" in input.credentials.roles
  input.credentials.system_scope == "all"
}

#user_id:%(target.trust.trustor_user_id)s
creds_user_id_eq_input_target_trust_trustor_user_id if {
  input.credentials.user_id == input.target.target.trust.trustor_user_id
}

#user_id:%(target.trust.trustor_user_id)s
creds_user_id_eq_input_target_trust_trustor_user_id if {
  input.credentials.user_id == input.target["target.trust.trustor_user_id"]
}

#user_id:%(target.trust.trustee_user_id)s
creds_user_id_eq_input_target_trust_trustee_user_id if {
  input.credentials.user_id == input.target.target.trust.trustee_user_id
}

#user_id:%(target.trust.trustee_user_id)s
creds_user_id_eq_input_target_trust_trustee_user_id if {
  input.credentials.user_id == input.target["target.trust.trustee_user_id"]
}

#((role:reader and system_scope:all) or user_id:%(target.trust.trustor_user_id)s or user_id:%(target.trust.trustee_user_id)s)
reader_and_creds_system_scope_eq_all_or_creds_user_id_eq_input_target_trust_trustor_user_id_or_creds_user_id_eq_input_target_trust_trustee_user_id if {
  reader_and_creds_system_scope_eq_all
}

#((role:reader and system_scope:all) or user_id:%(target.trust.trustor_user_id)s or user_id:%(target.trust.trustee_user_id)s)
reader_and_creds_system_scope_eq_all_or_creds_user_id_eq_input_target_trust_trustor_user_id_or_creds_user_id_eq_input_target_trust_trustee_user_id if {
  creds_user_id_eq_input_target_trust_trustor_user_id
}

#((role:reader and system_scope:all) or user_id:%(target.trust.trustor_user_id)s or user_id:%(target.trust.trustee_user_id)s)
reader_and_creds_system_scope_eq_all_or_creds_user_id_eq_input_target_trust_trustor_user_id_or_creds_user_id_eq_input_target_trust_trustee_user_id if {
  creds_user_id_eq_input_target_trust_trustee_user_id
}

