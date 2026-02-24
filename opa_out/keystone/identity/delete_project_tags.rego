package identity.delete_project_tags

import data.lib

# Remove all tags from a project.
# DELETE  /v3/projects/{project_id}/tags
# Intended scope(s): system, domain, project
#"identity:delete_project_tags": "(rule:admin_required) or (role:manager and domain_id:%(target.project.domain_id)s)"


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

