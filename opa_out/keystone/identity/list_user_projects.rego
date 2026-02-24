package identity.list_user_projects

import data.lib

# List projects for user.
# GET  /v3/users/{user_id}/projects
# Intended scope(s): system, domain, project
#"identity:list_user_projects": "(rule:admin_required) or (role:reader and system_scope:all) or (role:reader and domain_id:%(target.user.domain_id)s) or user_id:%(target.user.id)s"


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
  creds_user_id_eq_input_target_user_id
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

#user_id:%(target.user.id)s
creds_user_id_eq_input_target_user_id if {
  input.credentials.user_id == input.target.target.user.id
}

#user_id:%(target.user.id)s
creds_user_id_eq_input_target_user_id if {
  input.credentials.user_id == input.target["target.user.id"]
}

