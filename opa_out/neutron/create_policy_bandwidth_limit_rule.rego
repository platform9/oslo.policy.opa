package create_policy_bandwidth_limit_rule

import data.lib

# Create a QoS bandwidth limit rule
# POST  /qos/policies/{policy_id}/bandwidth_limit_rules
# Intended scope(s): project
#"create_policy_bandwidth_limit_rule": "(rule:admin_only) or (role:manager and rule:ext_parent_owner)"


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

