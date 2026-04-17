package get_address_group

import data.neutron_lib

# Get an address group
# GET  /address-groups
# GET  /address-groups/{id}
# Intended scope(s): project
# Target attrs: addresses, description, domain_id, id, name, project_id
# "get_address_group": "(rule:admin_only) or (role:reader and project_id:%(project_id)s) or rule:shared_address_groups"

allow if {
	# rule:admin_only
	neutron_lib.admin_only
}

allow if {
	reader_and_creds_project_id_eq_input_project_id
}

allow if {
	# rule:shared_address_groups
	neutron_lib.shared_address_groups
}

# (role:reader and project_id:%(project_id)s)
reader_and_creds_project_id_eq_input_project_id if {
	"reader" in input.credentials.roles
	input.credentials.project_id == input.target.project_id
	neutron_lib.same_domain
}
