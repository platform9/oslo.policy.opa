package create_floatingip.floating_ip_address

import data.lib

# Create a floating IP with a specific IP address
# POST  /floatingips
# Intended scope(s): project
#"create_floatingip:floating_ip_address": "(rule:admin_only) or (role:manager and project_id:%(project_id)s)"


allow if {
  #rule:admin_only
lib.admin_only
}

allow if {
  manager_and_creds_project_id_eq_input_project_id
}

#(role:manager and project_id:%(project_id)s)
manager_and_creds_project_id_eq_input_project_id if {
  "manager" in input.credentials.roles
  input.credentials.project_id == input.target.project_id
}

