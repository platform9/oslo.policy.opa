package create_dflt_security_group_rule

import data.lib

# Create a templated of the security group rule
# POST  /default-security-group-rules
# Intended scope(s): project
#"create_default_security_group_rule": "rule:admin_only"


allow if {
  lib.admin_only
}

