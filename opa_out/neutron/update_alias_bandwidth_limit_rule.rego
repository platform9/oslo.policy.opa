package update_alias_bandwidth_limit_rule

import data.lib

# Update a QoS bandwidth limit rule through alias
# PUT  /qos/alias_bandwidth_limit_rules/{rule_id}/
# Intended scope(s): project
#"update_alias_bandwidth_limit_rule": "(rule:admin_only) or (role:manager and rule:ext_parent_owner)"


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

