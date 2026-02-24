package identity.list_domains

import data.lib

# List domains.
# GET  /v3/domains
# Intended scope(s): system, domain, project
#"identity:list_domains": "rule:admin_required or (role:reader and system_scope:all) or (role:reader and domain_id:%(target.domain.id)s)"


allow if {
  #rule:admin_required
lib.admin_required
}

allow if {
  reader_and_creds_system_scope_eq_all
}

allow if {
  reader_and_creds_domain_id_eq_input_target_domain_id
}

#(role:reader and system_scope:all)
reader_and_creds_system_scope_eq_all if {
  "reader" in input.credentials.roles
  input.credentials.system_scope == "all"
}

#domain_id:%(target.domain.id)s
creds_domain_id_eq_input_target_domain_id if {
  input.credentials.domain_id == input.target.target.domain.id
}

#domain_id:%(target.domain.id)s
creds_domain_id_eq_input_target_domain_id if {
  input.credentials.domain_id == input.target["target.domain.id"]
}

#(role:reader and domain_id:%(target.domain.id)s)
reader_and_creds_domain_id_eq_input_target_domain_id if {
  "reader" in input.credentials.roles
  creds_domain_id_eq_input_target_domain_id
}

