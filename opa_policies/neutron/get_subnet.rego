package get_subnet

import data.neutron_lib

# Get a subnet
# GET  /subnets
# GET  /subnets/{id}
# Intended scope(s): project
# Target attrs: allocation_pools, cidr, dns_nameservers, dns_publish_fixed_ip, domain_id, enable_dhcp, gateway_ip, host_routes, id, ip_version, ipv6_address_mode, ipv6_ra_mode, name, network:tenant_id, network_id, networks:shared, router:external, segment_id, service_types, subnetpool_id, tenant_id
# "get_subnet": "role:reader and project_id:%(project_id)s or rule:shared or rule:external_network or (rule:admin_only) or (role:reader and rule:network_owner)"

allow if {
	# rule:global_admin
	neutron_lib.global_admin
}

allow if {
	# rule:context_is_admin
	neutron_lib.context_is_admin
}

allow if {
	owner_or_network_owner
}

allow if {
	external_and_context_is_admin
}

allow if {
	# role:service
	"service" in input.credentials.roles
}

# (rule:owner or rule:network_owner)
owner_or_network_owner if {
	# rule:owner
	neutron_lib.owner
}

# (rule:owner or rule:network_owner)
owner_or_network_owner if {
	# rule:network_owner
	neutron_lib.network_owner
}

# (rule:external and rule:context_is_admin)
external_and_context_is_admin if {
	neutron_lib.external
	neutron_lib.context_is_admin
}
