package identity.get_role

import data.lib

# Show role details.
# GET  /v3/roles/{role_id}
# HEAD  /v3/roles/{role_id}
# Intended scope(s): system, domain, project
#"identity:get_role": "(rule:admin_required or (role:reader and system_scope:all)) or (role:manager and rule:domain_managed_target_role)"


allow if {
  admin_required_or_reader_and_creds_system_scope_eq_all
}

allow if {
  manager_and_domain_managed_target_role
}

#(role:reader and system_scope:all)
reader_and_creds_system_scope_eq_all if {
  "reader" in input.credentials.roles
  input.credentials.system_scope == "all"
}

#(rule:admin_required or (role:reader and system_scope:all))
admin_required_or_reader_and_creds_system_scope_eq_all if {
  #rule:admin_required
lib.admin_required
}

#(rule:admin_required or (role:reader and system_scope:all))
admin_required_or_reader_and_creds_system_scope_eq_all if {
  reader_and_creds_system_scope_eq_all
}

#(role:manager and rule:domain_managed_target_role)
manager_and_domain_managed_target_role if {
  "manager" in input.credentials.roles
  lib.domain_managed_target_role
}

