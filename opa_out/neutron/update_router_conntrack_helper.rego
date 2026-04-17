package update_router_conntrack_helper

import data.neutron_lib

# Update a router conntrack helper
# PUT  /routers/{router_id}/conntrack_helpers/{conntrack_helper_id}
# Intended scope(s): project
# Target attrs: admin_state_up, availability_zone_hints, availability_zones, conntrack_helpers, distributed, domain_id, enable_default_route_bfd, enable_default_route_ecmp, enable_ndp_proxy, external_gateway_info, external_gateways, flavor_id, ha, id, name, routes, service_type_id, status, tenant_id
# "update_router_conntrack_helper": "(rule:admin_only) or (role:member and rule:ext_parent_owner)"

allow if {
	# rule:admin_only
	neutron_lib.admin_only
}

allow if {
	member_and_ext_parent_owner
}

# (role:member and rule:ext_parent_owner)
member_and_ext_parent_owner if {
	"member" in input.credentials.roles
	neutron_lib.ext_parent_owner
}
