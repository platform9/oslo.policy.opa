package identity.ec2_get_credential

import data.lib

# Show ec2 credential details.
# GET  /v3/users/{user_id}/credentials/OS-EC2/{credential_id}
# Intended scope(s): system, project
#"identity:ec2_get_credential": "(rule:admin_required) or (role:reader and system_scope:all) or user_id:%(target.credential.user_id)s"


allow if {
  #rule:admin_required
lib.admin_required
}

allow if {
  reader_and_creds_system_scope_eq_all
}

allow if {
  creds_user_id_eq_input_target_credential_user_id
}

#(role:reader and system_scope:all)
reader_and_creds_system_scope_eq_all if {
  "reader" in input.credentials.roles
  input.credentials.system_scope == "all"
}

#user_id:%(target.credential.user_id)s
creds_user_id_eq_input_target_credential_user_id if {
  input.credentials.user_id == input.target.target.credential.user_id
}

#user_id:%(target.credential.user_id)s
creds_user_id_eq_input_target_credential_user_id if {
  input.credentials.user_id == input.target["target.credential.user_id"]
}

