package create_subnetpool

import data.neutron_lib

# Create a subnetpool
# POST  /subnetpools
# Intended scope(s): project
# Target attrs: address_scope_id, default_prefixlen, default_quota, domain_id, id, ip_version, is_default, max_prefixlen, min_prefixlen, name, prefixes, shared, tenant_id
# "create_subnetpool": "(rule:admin_only) or (role:member and project_id:%(project_id)s)"

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
