package get_ndp_proxy

import data.neutron_lib

# Get a ndp proxy
# GET  /ndp_proxies
# GET  /ndp_proxies/{id}
# Intended scope(s): project
# Target attrs: description, domain_id, id, ip_address, name, port_id, project_id, router_id
# "get_ndp_proxy": "(rule:admin_only) or (role:reader and project_id:%(project_id)s)"

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
