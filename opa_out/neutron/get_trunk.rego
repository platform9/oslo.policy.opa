package get_trunk

import data.neutron_lib

# Get a trunk
# GET  /trunks
# GET  /trunks/{id}
# Intended scope(s): project
# Target attrs: admin_state_up, domain_id, id, name, port_id, status, sub_ports, tenant_id
# "get_trunk": "(rule:admin_only) or (role:reader and project_id:%(project_id)s)"

allow if {
	# rule:admin_only
	neutron_lib.admin_only
}

allow if {
	reader_and_creds_project_id_eq_input_project_id
}

# (role:reader and project_id:%(project_id)s)
reader_and_creds_project_id_eq_input_project_id if {
	"reader" in input.credentials.roles
	input.credentials.project_id == input.target.project_id
	neutron_lib.same_domain
}
