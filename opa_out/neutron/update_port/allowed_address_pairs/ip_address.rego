package update_port.allowed_address_pairs.ip_address

import data.lib

# Update ``ip_address`` of ``allowed_address_pairs`` attribute of a
# port
# PUT  /ports/{id}
# Intended scope(s): project
#"update_port:allowed_address_pairs:ip_address": "(rule:admin_only) or (role:member and rule:network_owner) or role:manager and project_id:%(project_id)s or rule:service_api"


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

