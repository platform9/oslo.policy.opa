package update_alias_dscp_marking_rule

import data.lib

# Update a QoS DSCP marking rule through alias
# PUT  /qos/alias_dscp_marking_rules/{rule_id}/
# Intended scope(s): project
#"update_alias_dscp_marking_rule": "(rule:admin_only) or (role:manager and rule:ext_parent_owner)"


allow if {
  #rule:admin_only
lib.admin_only
}

allow if {
  manager_and_ext_parent_owner
}

#(role:manager and rule:ext_parent_owner)
manager_and_ext_parent_owner if {
  "manager" in input.credentials.roles
  lib.ext_parent_owner
}

