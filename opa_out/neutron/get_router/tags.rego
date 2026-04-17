package get_router.tags

import data.neutron_lib

# Get the router tags
# GET  /routers/{id}/tags
# GET  /routers/{id}/tags/{tag_id}
# Intended scope(s): project
# Target attrs: admin_state_up, availability_zone_hints, availability_zones, conntrack_helpers, distributed, domain_id, enable_default_route_bfd, enable_default_route_ecmp, enable_ndp_proxy, external_gateway_info, external_gateways, flavor_id, ha, id, name, routes, service_type_id, status, tenant_id
# "get_router:tags": "(rule:admin_only) or (role:reader and project_id:%(project_id)s)"

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
