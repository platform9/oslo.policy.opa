package identity.get_user

import data.lib

# Show user details.
# GET  /v3/users/{user_id}
# HEAD  /v3/users/{user_id}
# Intended scope(s): system, domain, project
#"identity:get_user": "(rule:admin_required) or (role:reader and system_scope:all) or (role:reader and token.domain.id:%(target.user.domain_id)s) or user_id:%(target.user.id)s"


allow if {
  #rule:admin_required
lib.admin_required
}

allow if {
  reader_and_creds_system_scope_eq_all
}

allow if {
  reader_and_creds_token_domain_id_eq_input_target_user_domain_id
}

allow if {
  creds_user_id_eq_input_target_user_id
}

#(role:reader and system_scope:all)
reader_and_creds_system_scope_eq_all if {
  "reader" in input.credentials.roles
  input.credentials.system_scope == "all"
}

#token.domain.id:%(target.user.domain_id)s
creds_token_domain_id_eq_input_target_user_domain_id if {
  input.credentials.token.domain.id == input.target.target.user.domain_id
}

#token.domain.id:%(target.user.domain_id)s
creds_token_domain_id_eq_input_target_user_domain_id if {
  input.credentials.token.domain.id == input.target["target.user.domain_id"]
}

#(role:reader and token.domain.id:%(target.user.domain_id)s)
reader_and_creds_token_domain_id_eq_input_target_user_domain_id if {
  "reader" in input.credentials.roles
  creds_token_domain_id_eq_input_target_user_domain_id
}

#user_id:%(target.user.id)s
creds_user_id_eq_input_target_user_id if {
  input.credentials.user_id == input.target.target.user.id
}

#user_id:%(target.user.id)s
creds_user_id_eq_input_target_user_id if {
  input.credentials.user_id == input.target["target.user.id"]
}

