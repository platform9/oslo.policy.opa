package get_address_scope

import data.neutron_lib

# Get an address scope
# GET  /address-scopes
# GET  /address-scopes/{id}
# Intended scope(s): project
# Target attrs: domain_id, id, ip_version, name, shared, tenant_id
# "get_address_scope": "rule:admin_only or role:reader and project_id:%(project_id)s or rule:shared_address_scopes"

allow if {
	# rule:admin_only
	neutron_lib.admin_only
}

allow if {
	reader_and_creds_project_id_eq_input_project_id
}

allow if {
	# rule:shared_address_scopes
	neutron_lib.shared_address_scopes
}

# (role:reader and project_id:%(project_id)s)
reader_and_creds_project_id_eq_input_project_id if {
	"reader" in input.credentials.roles
	input.credentials.project_id == input.target.project_id
	neutron_lib.same_domain
}
