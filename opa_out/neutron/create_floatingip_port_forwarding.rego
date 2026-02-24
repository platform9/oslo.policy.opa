package create_floatingip_port_forwarding

import data.lib

# Create a floating IP port forwarding
# POST  /floatingips/{floatingip_id}/port_forwardings
# Intended scope(s): project
#"create_floatingip_port_forwarding": "(rule:admin_only) or (role:member and rule:ext_parent_owner)"


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

