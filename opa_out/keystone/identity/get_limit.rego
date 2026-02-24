package identity.get_limit

import data.lib

# Show limit details.
# GET  /v3/limits/{limit_id}
# HEAD  /v3/limits/{limit_id}
# Intended scope(s): system, domain, project
#"identity:get_limit": "rule:admin_required or (role:reader and system_scope:all) or (domain_id:%(target.limit.domain.id)s or domain_id:%(target.limit.project.domain_id)s) or (project_id:%(target.limit.project_id)s and not None:%(target.limit.project_id)s)"


allow if {
  #rule:admin_required
lib.admin_required
}

allow if {
  reader_and_creds_system_scope_eq_all
}

allow if {
  creds_domain_id_eq_input_target_limit_domain_id_or_creds_domain_id_eq_input_target_limit_project_domain_id
}

allow if {
  creds_project_id_eq_input_target_limit_project_id_and_not_input_target_limit_project_id_empty
}

#(role:reader and system_scope:all)
reader_and_creds_system_scope_eq_all if {
  "reader" in input.credentials.roles
  input.credentials.system_scope == "all"
}

#domain_id:%(target.limit.domain.id)s
creds_domain_id_eq_input_target_limit_domain_id if {
  input.credentials.domain_id == input.target.target.limit.domain.id
}

#domain_id:%(target.limit.domain.id)s
creds_domain_id_eq_input_target_limit_domain_id if {
  input.credentials.domain_id == input.target["target.limit.domain.id"]
}

#domain_id:%(target.limit.project.domain_id)s
creds_domain_id_eq_input_target_limit_project_domain_id if {
  input.credentials.domain_id == input.target.target.limit.project.domain_id
}

#domain_id:%(target.limit.project.domain_id)s
creds_domain_id_eq_input_target_limit_project_domain_id if {
  input.credentials.domain_id == input.target["target.limit.project.domain_id"]
}

#(domain_id:%(target.limit.domain.id)s or domain_id:%(target.limit.project.domain_id)s)
creds_domain_id_eq_input_target_limit_domain_id_or_creds_domain_id_eq_input_target_limit_project_domain_id if {
  creds_domain_id_eq_input_target_limit_domain_id
}

#(domain_id:%(target.limit.domain.id)s or domain_id:%(target.limit.project.domain_id)s)
creds_domain_id_eq_input_target_limit_domain_id_or_creds_domain_id_eq_input_target_limit_project_domain_id if {
  creds_domain_id_eq_input_target_limit_project_domain_id
}

#project_id:%(target.limit.project_id)s
creds_project_id_eq_input_target_limit_project_id if {
  input.credentials.project_id == input.target.target.limit.project_id
}

#project_id:%(target.limit.project_id)s
creds_project_id_eq_input_target_limit_project_id if {
  input.credentials.project_id == input.target["target.limit.project_id"]
}

#not None:%(target.limit.project_id)s
not_input_target_limit_project_id_empty if {
  not is_null(input.target.target.limit.project_id)
}

#not None:%(target.limit.project_id)s
not_input_target_limit_project_id_empty if {
  not is_null(input.target["target.limit.project_id"])
}

#(project_id:%(target.limit.project_id)s and not None:%(target.limit.project_id)s)
creds_project_id_eq_input_target_limit_project_id_and_not_input_target_limit_project_id_empty if {
  creds_project_id_eq_input_target_limit_project_id
  not_input_target_limit_project_id_empty
}

