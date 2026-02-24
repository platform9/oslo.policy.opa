package get_rule_type

# Get available QoS rule types
# GET  /qos/rule-types
# GET  /qos/rule-types/{rule_type}
# Intended scope(s): project
#"get_rule_type": "role:reader"


allow if {
  "reader" in input.credentials.roles
}

