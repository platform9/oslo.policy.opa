package get_alias_bandwidth_limit_rule

import data.lib

# Get a QoS bandwidth limit rule through alias
# GET  /qos/alias_bandwidth_limit_rules/{rule_id}/
# Intended scope(s): project
#"get_alias_bandwidth_limit_rule": "(rule:admin_only) or (role:reader and rule:ext_parent_owner)"


allow if {
  #rule:admin_only
lib.admin_only
}

allow if {
  reader_and_ext_parent_owner
}

#(role:reader and rule:ext_parent_owner)
reader_and_ext_parent_owner if {
  "reader" in input.credentials.roles
  lib.ext_parent_owner
}

