package identity.list_roles

import data.lib

# List roles.
# GET  /v3/roles
# HEAD  /v3/roles
# Intended scope(s): system, domain, project
#"identity:list_roles": "(rule:admin_required or (role:reader and system_scope:all)) or (role:manager and not domain_id:None)"


allow if {
  admin_required_or_reader_and_creds_system_scope_eq_all
}

allow if {
  manager_and_not_creds_domain_id_eq_None
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

#(role:manager and not domain_id:None)
manager_and_not_creds_domain_id_eq_None if {
  "manager" in input.credentials.roles
  not is_null(input.credentials.domain_id)
}

