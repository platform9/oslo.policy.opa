package identity.get_domain_config

import data.lib

# Get the entire domain configuration for a domain, an option group
# within a domain, or a specific configuration option within a group
# for a domain.
# GET  /v3/domains/{domain_id}/config
# HEAD  /v3/domains/{domain_id}/config
# GET  /v3/domains/{domain_id}/config/{group}
# HEAD  /v3/domains/{domain_id}/config/{group}
# GET  /v3/domains/{domain_id}/config/{group}/{option}
# HEAD  /v3/domains/{domain_id}/config/{group}/{option}
# Intended scope(s): system, project
#"identity:get_domain_config": "rule:admin_required or (role:reader and system_scope:all)"


allow if {
  #rule:admin_required
lib.admin_required
}

allow if {
  reader_and_creds_system_scope_eq_all
}

#(role:reader and system_scope:all)
reader_and_creds_system_scope_eq_all if {
  "reader" in input.credentials.roles
  input.credentials.system_scope == "all"
}

