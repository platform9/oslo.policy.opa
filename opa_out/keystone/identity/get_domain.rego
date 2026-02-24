package identity.get_domain

import data.lib

# Show domain details.
# GET  /v3/domains/{domain_id}
# Intended scope(s): system, domain, project
#"identity:get_domain": "rule:admin_required or (role:reader and system_scope:all) or token.domain.id:%(target.domain.id)s or token.project.domain.id:%(target.domain.id)s"


allow if {
  #rule:admin_required
lib.admin_required
}

allow if {
  reader_and_creds_system_scope_eq_all
}

allow if {
  creds_token_domain_id_eq_input_target_domain_id
}

allow if {
  creds_token_project_domain_id_eq_input_target_domain_id
}

#(role:reader and system_scope:all)
reader_and_creds_system_scope_eq_all if {
  "reader" in input.credentials.roles
  input.credentials.system_scope == "all"
}

#token.domain.id:%(target.domain.id)s
creds_token_domain_id_eq_input_target_domain_id if {
  input.credentials.token.domain.id == input.target.target.domain.id
}

#token.domain.id:%(target.domain.id)s
creds_token_domain_id_eq_input_target_domain_id if {
  input.credentials.token.domain.id == input.target["target.domain.id"]
}

#token.project.domain.id:%(target.domain.id)s
creds_token_project_domain_id_eq_input_target_domain_id if {
  input.credentials.token.project.domain.id == input.target.target.domain.id
}

#token.project.domain.id:%(target.domain.id)s
creds_token_project_domain_id_eq_input_target_domain_id if {
  input.credentials.token.project.domain.id == input.target["target.domain.id"]
}

