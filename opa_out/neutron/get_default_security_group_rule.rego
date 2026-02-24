package get_dflt_security_group_rule

# Get a templated of the security group rule
# GET  /default-security-group-rules
# GET  /default-security-group-rules/{id}
# Intended scope(s): project
#"get_default_security_group_rule": "role:reader"


allow if {
  "reader" in input.credentials.roles
}

