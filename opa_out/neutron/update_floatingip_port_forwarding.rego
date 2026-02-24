package update_floatingip_port_forwarding

import data.lib

# Update a floating IP port forwarding
# PUT  /floatingips/{floatingip_id}/port_forwardings/{port_forwarding_id}
# Intended scope(s): project
#"update_floatingip_port_forwarding": "(rule:admin_only) or (role:member and rule:ext_parent_owner)"


allow if {
  #rule:admin_only
lib.admin_only
}

allow if {
  member_and_tenant_id_
}

#(role:member and tenant_id:%(ext_parent_floatingip:tenant_id)s)
member_and_tenant_id_ if {
  "member" in input.credentials.roles
  lib.get_floatingip(input.target.ext_parent_floatingip_id).tenant_id == input.credentials.tenant_id
}

