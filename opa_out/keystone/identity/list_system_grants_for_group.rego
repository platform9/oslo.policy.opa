package identity.list_system_grants_for_group

import data.lib

# List all grants a specific group has on the system.
# ['HEAD', 'GET']  /v3/system/groups/{group_id}/roles
# Intended scope(s): system, project
#"identity:list_system_grants_for_group": "rule:admin_required or (role:reader and system_scope:all)"


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

