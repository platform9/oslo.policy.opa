package update_router.external_gateway_info.network_id

import data.neutron_lib

# Update ``network_id`` attribute of ``external_gateway_info``
# information of a router
# PUT  /routers/{id}
# Intended scope(s): project
# Target attrs: admin_state_up, availability_zone_hints, availability_zones, conntrack_helpers, distributed, domain_id, enable_default_route_bfd, enable_default_route_ecmp, enable_ndp_proxy, external_gateway_info, external_gateways, flavor_id, ha, id, name, routes, service_type_id, status, tenant_id
# "update_router:external_gateway_info:network_id": "(rule:admin_only) or (role:member and project_id:%(project_id)s)"

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
