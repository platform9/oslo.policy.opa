package get_policy_minimum_packet_rate_rule

import data.lib

# Get a QoS minimum packet rate rule
# GET  /qos/policies/{policy_id}/minimum_packet_rate_rules
# GET  /qos/policies/{policy_id}/minimum_packet_rate_rules/{rule_id}
# Intended scope(s): project
#"get_policy_minimum_packet_rate_rule": "(rule:admin_only) or (role:reader and rule:ext_parent_owner)"


allow if {
  #rule:admin_only
lib.admin_only
}

allow if {
  reader_and_tenant_id_
}

#(role:reader and tenant_id:%(ext_parent_policy:tenant_id)s)
reader_and_tenant_id_ if {
  "reader" in input.credentials.roles
  lib.get_policy(input.target.ext_parent_policy_id).tenant_id == input.credentials.tenant_id
}

