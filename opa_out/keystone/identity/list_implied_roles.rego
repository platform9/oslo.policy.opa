package identity.list_implied_roles

import data.lib

# List associations between two roles. When a relationship exists
# between a prior role and an implied role and the prior role is
# assigned to a user, the user also assumes the implied role. This
# will return all the implied roles that would be assumed by the user
# who gets the specified prior role.
# GET  /v3/roles/{prior_role_id}/implies
# HEAD  /v3/roles/{prior_role_id}/implies
# Intended scope(s): system, project
#"identity:list_implied_roles": "rule:admin_required or (role:reader and system_scope:all)"


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

