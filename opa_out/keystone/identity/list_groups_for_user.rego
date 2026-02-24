package identity.list_groups_for_user

import data.lib

# List groups to which a user belongs.
# GET  /v3/users/{user_id}/groups
# HEAD  /v3/users/{user_id}/groups
# Intended scope(s): system, domain, project
#"identity:list_groups_for_user": "(rule:admin_required) or (role:reader and system_scope:all) or (role:reader and domain_id:%(target.user.domain_id)s) or user_id:%(user_id)s"


allow if {
  #rule:admin_required
lib.admin_required
}

allow if {
  reader_and_creds_system_scope_eq_all
}

allow if {
  reader_and_creds_domain_id_eq_input_target_user_domain_id
}

allow if {
  #user_id:%(user_id)s
input.credentials.user_id == input.target.user_id
}

#(role:reader and system_scope:all)
reader_and_creds_system_scope_eq_all if {
  "reader" in input.credentials.roles
  input.credentials.system_scope == "all"
}

#domain_id:%(target.user.domain_id)s
creds_domain_id_eq_input_target_user_domain_id if {
  input.credentials.domain_id == input.target.target.user.domain_id
}

#domain_id:%(target.user.domain_id)s
creds_domain_id_eq_input_target_user_domain_id if {
  input.credentials.domain_id == input.target["target.user.domain_id"]
}

#(role:reader and domain_id:%(target.user.domain_id)s)
reader_and_creds_domain_id_eq_input_target_user_domain_id if {
  "reader" in input.credentials.roles
  creds_domain_id_eq_input_target_user_domain_id
}

