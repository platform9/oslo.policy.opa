package get_local_ip_port_association

import data.lib

# Get a Local IP port association
# GET  /local_ips/{local_ip_id}/port_associations
# GET  /local_ips/{local_ip_id}/port_associations/{fixed_port_id}
# Intended scope(s): project
#"get_local_ip_port_association": "(rule:admin_only) or (role:reader and rule:ext_parent_owner)"


allow if {
  #rule:admin_only
lib.admin_only
}

allow if {
  reader_and_ext_parent_owner
}

#(role:reader and rule:ext_parent_owner)
reader_and_ext_parent_owner if {
  "reader" in input.credentials.roles
  lib.ext_parent_owner
}

