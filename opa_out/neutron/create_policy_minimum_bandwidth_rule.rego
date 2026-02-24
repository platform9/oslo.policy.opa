package create_policy_minimum_bandwidth_rule

import data.lib

# Create a QoS minimum bandwidth rule
# POST  /qos/policies/{policy_id}/minimum_bandwidth_rules
# Intended scope(s): project
#"create_policy_minimum_bandwidth_rule": "(rule:admin_only) or (role:manager and rule:ext_parent_owner)"


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

