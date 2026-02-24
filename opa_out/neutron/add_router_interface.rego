package add_router_interface

import data.lib

# Add an interface to a router
# PUT  /routers/{id}/add_router_interface
# Intended scope(s): project
#"add_router_interface": "(rule:admin_only) or (role:member and project_id:%(project_id)s)"


allow if {
  #rule:admin_only
lib.admin_only
}

allow if {
  member_and_creds_project_id_eq_input_project_id
}

#(role:member and project_id:%(project_id)s)
member_and_creds_project_id_eq_input_project_id if {
  "member" in input.credentials.roles
  input.credentials.project_id == input.target.project_id
}

