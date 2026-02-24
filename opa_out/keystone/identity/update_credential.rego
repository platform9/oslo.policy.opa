package identity.update_credential

import data.lib

# Update credential.
# PATCH  /v3/credentials/{credential_id}
# Intended scope(s): system, domain, project
#"identity:update_credential": "(rule:admin_required) or user_id:%(target.credential.user_id)s"


allow if {
  #rule:admin_required
lib.admin_required
}

allow if {
  creds_user_id_eq_input_target_credential_user_id
}

#user_id:%(target.credential.user_id)s
creds_user_id_eq_input_target_credential_user_id if {
  input.credentials.user_id == input.target.target.credential.user_id
}

#user_id:%(target.credential.user_id)s
creds_user_id_eq_input_target_credential_user_id if {
  input.credentials.user_id == input.target["target.credential.user_id"]
}

