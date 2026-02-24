package create_security_group_rule

import data.lib

# Create a security group rule
# POST  /security-group-rules
# Intended scope(s): project
#"create_security_group_rule": "(rule:admin_only) or (role:member and rule:sg_owner)"


allow if {
  #rule:admin_only
lib.admin_only
}

allow if {
  member_and_sg_owner
}

#(role:member and rule:sg_owner)
member_and_sg_owner if {
  "member" in input.credentials.roles
  lib.sg_owner
}

