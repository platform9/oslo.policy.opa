package delete_alias_minimum_bandwidth_rule

import data.lib

# Delete a QoS minimum bandwidth rule through alias
# DELETE  /qos/alias_minimum_bandwidth_rules/{rule_id}/
# Intended scope(s): project
#"delete_alias_minimum_bandwidth_rule": "(rule:admin_only) or (role:manager and rule:ext_parent_owner)"


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

