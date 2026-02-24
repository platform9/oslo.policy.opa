package identity.get_domain_config_dflt

import data.lib

# Get domain configuration default for either a domain, specific group
# or a specific option in a group.
# GET  /v3/domains/config/default
# HEAD  /v3/domains/config/default
# GET  /v3/domains/config/{group}/default
# HEAD  /v3/domains/config/{group}/default
# GET  /v3/domains/config/{group}/{option}/default
# HEAD  /v3/domains/config/{group}/{option}/default
# Intended scope(s): system, project
#"identity:get_domain_config_default": "rule:admin_required or (role:reader and system_scope:all)"


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

