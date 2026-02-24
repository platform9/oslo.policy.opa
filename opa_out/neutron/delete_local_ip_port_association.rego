package delete_local_ip_port_association

import data.lib

# Delete a Local IP port association
# DELETE  /local_ips/{local_ip_id}/port_associations/{fixed_port_id}
# Intended scope(s): project
#"delete_local_ip_port_association": "(rule:admin_only) or (role:member and rule:ext_parent_owner)"


allow if {
  #rule:admin_only
lib.admin_only
}

allow if {
  member_and_ext_parent_owner
}

#(role:member and rule:ext_parent_owner)
member_and_ext_parent_owner if {
  "member" in input.credentials.roles
  lib.ext_parent_owner
}

