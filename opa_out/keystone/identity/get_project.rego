package identity.get_project

import data.lib

# Show project details.
# GET  /v3/projects/{project_id}
# Intended scope(s): system, domain, project
#"identity:get_project": "(rule:admin_required) or (role:reader and system_scope:all) or (role:reader and domain_id:%(target.project.domain_id)s) or project_id:%(target.project.id)s"


allow if {
  #rule:admin_required
lib.admin_required
}

allow if {
  reader_and_creds_system_scope_eq_all
}

allow if {
  reader_and_creds_domain_id_eq_input_target_project_domain_id
}

allow if {
  creds_project_id_eq_input_target_project_id
}

#(role:reader and system_scope:all)
reader_and_creds_system_scope_eq_all if {
  "reader" in input.credentials.roles
  input.credentials.system_scope == "all"
}

#domain_id:%(target.project.domain_id)s
creds_domain_id_eq_input_target_project_domain_id if {
  input.credentials.domain_id == input.target.target.project.domain_id
}

#domain_id:%(target.project.domain_id)s
creds_domain_id_eq_input_target_project_domain_id if {
  input.credentials.domain_id == input.target["target.project.domain_id"]
}

#(role:reader and domain_id:%(target.project.domain_id)s)
reader_and_creds_domain_id_eq_input_target_project_domain_id if {
  "reader" in input.credentials.roles
  creds_domain_id_eq_input_target_project_domain_id
}

#project_id:%(target.project.id)s
creds_project_id_eq_input_target_project_id if {
  input.credentials.project_id == input.target.target.project.id
}

#project_id:%(target.project.id)s
creds_project_id_eq_input_target_project_id if {
  input.credentials.project_id == input.target["target.project.id"]
}

