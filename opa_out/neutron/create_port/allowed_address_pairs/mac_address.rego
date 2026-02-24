package create_port.allowed_address_pairs.mac_address

import data.lib

# Specify ``mac_address` of `allowed_address_pairs`` attribute when
# creating a port
# POST  /ports
# Intended scope(s): project
#"create_port:allowed_address_pairs:mac_address": "(rule:admin_only) or (role:member and rule:network_owner) or role:manager and project_id:%(project_id)s or rule:service_api"


allow if {
  #rule:admin_only
lib.admin_only
}

allow if {
  member_and_network_owner
}

allow if {
  manager_and_creds_project_id_eq_input_project_id
}

allow if {
  #rule:service_api
lib.service_api
}

#(role:member and rule:network_owner)
member_and_network_owner if {
  "member" in input.credentials.roles
  lib.network_owner
}

#(role:manager and project_id:%(project_id)s)
manager_and_creds_project_id_eq_input_project_id if {
  "manager" in input.credentials.roles
  input.credentials.project_id == input.target.project_id
}

