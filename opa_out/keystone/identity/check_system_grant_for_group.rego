package identity.check_system_grant_for_group

import data.lib

# Check if a group has a role on the system.
# ['HEAD', 'GET']  /v3/system/groups/{group_id}/roles/{role_id}
# Intended scope(s): system, project
#"identity:check_system_grant_for_group": "rule:admin_required or (role:reader and system_scope:all)"


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

