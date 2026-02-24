package get_floatingip_port_forwarding

import data.lib

# Get a floating IP port forwarding
# GET  /floatingips/{floatingip_id}/port_forwardings
# GET  /floatingips/{floatingip_id}/port_forwardings/{port_forwarding_id}
# Intended scope(s): project
#"get_floatingip_port_forwarding": "(rule:admin_only) or (role:reader and rule:ext_parent_owner)"


allow if {
  #rule:admin_only
lib.admin_only
}

allow if {
  reader_and_tenant_id_
}

#(role:reader and tenant_id:%(ext_parent_floatingip:tenant_id)s)
reader_and_tenant_id_ if {
  "reader" in input.credentials.roles
  lib.get_floatingip(input.target.ext_parent_floatingip_id).tenant_id == input.credentials.tenant_id
}

