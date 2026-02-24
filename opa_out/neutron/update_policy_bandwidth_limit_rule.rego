package update_policy_bandwidth_limit_rule

import data.lib

# Update a QoS bandwidth limit rule
# PUT  /qos/policies/{policy_id}/bandwidth_limit_rules/{rule_id}
# Intended scope(s): project
#"update_policy_bandwidth_limit_rule": "(rule:admin_only) or (role:manager and rule:ext_parent_owner)"


allow if {
  #rule:admin_only
lib.admin_only
}

allow if {
  manager_and_tenant_id_
}

#(role:manager and tenant_id:%(ext_parent_policy:tenant_id)s)
manager_and_tenant_id_ if {
  "manager" in input.credentials.roles
  lib.get_policy(input.target.ext_parent_policy_id).tenant_id == input.credentials.tenant_id
}

