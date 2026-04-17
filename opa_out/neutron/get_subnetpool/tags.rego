package get_subnetpool.tags

import data.neutron_lib

# Get the subnetpool tags
# GET  /subnetpools/{id}/tags
# GET  /subnetpools/{id}/tags/{tag_id}
# Intended scope(s): project
# Target attrs: address_scope_id, default_prefixlen, default_quota, domain_id, id, ip_version, is_default, max_prefixlen, min_prefixlen, name, prefixes, shared, tenant_id
# "get_subnetpool:tags": "(rule:admin_only) or (role:reader and project_id:%(project_id)s) or rule:shared_subnetpools"

allow if {
	# rule:admin_only
	neutron_lib.admin_only
}

allow if {
	reader_and_creds_project_id_eq_input_project_id
}

allow if {
	# rule:shared_subnetpools
	neutron_lib.shared_subnetpools
}

# (role:reader and project_id:%(project_id)s)
reader_and_creds_project_id_eq_input_project_id if {
	"reader" in input.credentials.roles
	input.credentials.project_id == input.target.project_id
	neutron_lib.same_domain
}
