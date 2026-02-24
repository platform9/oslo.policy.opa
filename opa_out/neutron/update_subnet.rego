package update_subnet

import data.lib

# Update a subnet
# PUT  /subnets/{id}
# Intended scope(s): project
#"update_subnet": "role:member and project_id:%(project_id)s or (rule:admin_only) or (role:member and rule:network_owner)"


allow if {
  member_and_creds_project_id_eq_input_project_id
}

allow if {
  #rule:admin_only
lib.admin_only
}

allow if {
  member_and_network_owner
}

#(role:member and project_id:%(project_id)s)
member_and_creds_project_id_eq_input_project_id if {
  "member" in input.credentials.roles
  input.credentials.project_id == input.target.project_id
}

#(role:member and rule:network_owner)
member_and_network_owner if {
  "member" in input.credentials.roles
  lib.network_owner
}

