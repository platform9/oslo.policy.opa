package update_ndp_proxy

import data.neutron_lib

# Update a ndp proxy
# PUT  /ndp_proxies/{id}
# Intended scope(s): project
# Target attrs: description, domain_id, id, ip_address, name, port_id, project_id, router_id
# "update_ndp_proxy": "(rule:admin_only) or (role:member and project_id:%(project_id)s)"

allow if {
	# rule:admin_only
	neutron_lib.admin_only
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
