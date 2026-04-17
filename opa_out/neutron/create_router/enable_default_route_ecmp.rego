package create_router.enable_dflt_route_ecmp

import data.neutron_lib

# Specify ``enable_default_route_ecmp`` attribute when creating a
# router
# POST  /routers
# Intended scope(s): project
# Target attrs: admin_state_up, availability_zone_hints, availability_zones, conntrack_helpers, distributed, domain_id, enable_default_route_bfd, enable_default_route_ecmp, enable_ndp_proxy, external_gateway_info, external_gateways, flavor_id, ha, id, name, routes, service_type_id, status, tenant_id
# "create_router:enable_default_route_ecmp": "rule:admin_only"

allow if {
	neutron_lib.admin_only
}
