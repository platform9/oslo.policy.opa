package identity.create_user

import data.lib

# Create a user.
# POST  /v3/users
# Intended scope(s): system, domain, project
#"identity:create_user": "(rule:admin_required) or (role:manager and token.domain.id:%(target.user.domain_id)s)"


allow if {
  #rule:admin_required
lib.admin_required
}

allow if {
  manager_and_creds_token_domain_id_eq_input_target_user_domain_id
}

#token.domain.id:%(target.user.domain_id)s
creds_token_domain_id_eq_input_target_user_domain_id if {
  input.credentials.token.domain.id == input.target.target.user.domain_id
}

#token.domain.id:%(target.user.domain_id)s
creds_token_domain_id_eq_input_target_user_domain_id if {
  input.credentials.token.domain.id == input.target["target.user.domain_id"]
}

#(role:manager and token.domain.id:%(target.user.domain_id)s)
manager_and_creds_token_domain_id_eq_input_target_user_domain_id if {
  "manager" in input.credentials.roles
  creds_token_domain_id_eq_input_target_user_domain_id
}

