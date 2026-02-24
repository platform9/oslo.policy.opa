package identity.create_project_tag

import data.lib

# Add a single tag to a project.
# PUT  /v3/projects/{project_id}/tags/{value}
# Intended scope(s): system, domain, project
#"identity:create_project_tag": "(rule:admin_required) or (role:manager and domain_id:%(target.project.domain_id)s)"


allow if {
  #rule:admin_required
lib.admin_required
}

allow if {
  manager_and_creds_domain_id_eq_input_target_project_domain_id
}

#domain_id:%(target.project.domain_id)s
creds_domain_id_eq_input_target_project_domain_id if {
  input.credentials.domain_id == input.target.target.project.domain_id
}

#domain_id:%(target.project.domain_id)s
creds_domain_id_eq_input_target_project_domain_id if {
  input.credentials.domain_id == input.target["target.project.domain_id"]
}

#(role:manager and domain_id:%(target.project.domain_id)s)
manager_and_creds_domain_id_eq_input_target_project_domain_id if {
  "manager" in input.credentials.roles
  creds_domain_id_eq_input_target_project_domain_id
}

