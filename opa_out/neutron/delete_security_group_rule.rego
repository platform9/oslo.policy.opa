package delete_security_group_rule

import data.lib

# Delete a security group rule
# DELETE  /security-group-rules/{id}
# Intended scope(s): project
#"delete_security_group_rule": "(rule:admin_only) or (role:member and rule:sg_owner)"


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

