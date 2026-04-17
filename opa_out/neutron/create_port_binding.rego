package create_port_binding

import data.neutron_lib

# Create port binding on the host
# POST  /ports/{port_id}/bindings/
# Intended scope(s): project
# "create_port_binding": "rule:service_api"

allow if {
	# role:admin
	"admin" in input.credentials.roles
	neutron_lib.same_domain
}

allow if {
	# role:service
	"service" in input.credentials.roles
}

allow if {
	member_and_creds_project_id_eq_input_project_id
}

# (role:member and project_id:%(project_id)s)
member_and_creds_project_id_eq_input_project_id if {
	"member" in input.credentials.roles
	input.credentials.project_id == input.target.project_id
	neutron_lib.same_domain
}
