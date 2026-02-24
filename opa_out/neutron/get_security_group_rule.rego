package get_security_group_rule

import data.lib

# Get a security group rule
# GET  /security-group-rules
# GET  /security-group-rules/{id}
# Intended scope(s): project
#"get_security_group_rule": "(rule:admin_only) or (role:reader and rule:sg_owner)"


allow if {
  #rule:admin_only
lib.admin_only
}

allow if {
  reader_and_sg_owner
}

#(role:reader and rule:sg_owner)
reader_and_sg_owner if {
  "reader" in input.credentials.roles
  lib.sg_owner
}

