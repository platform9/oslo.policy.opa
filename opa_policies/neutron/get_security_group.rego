package get_security_group

import data.neutron_lib

# Get a security group
# GET  /security-groups
# GET  /security-groups/{id}
# Intended scope(s): project
# Target attrs: domain_id, shared, stateful
# "get_security_group": "(rule:admin_only) or (role:reader and project_id:%(project_id)s) or rule:shared_security_group"

allow if {
	# rule:admin_only
	neutron_lib.admin_only
}

allow if {
	reader_and_creds_project_id_eq_input_project_id
}

allow if {
	# rule:shared_security_group
	neutron_lib.shared_security_group
}

# (role:reader and project_id:%(project_id)s)
reader_and_creds_project_id_eq_input_project_id if {
	"reader" in input.credentials.roles
	input.credentials.project_id == input.target.project_id
	neutron_lib.same_domain
}
