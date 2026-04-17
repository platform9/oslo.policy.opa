package get_subnet.tags

import data.neutron_lib

# Get the subnet tags
# GET  /subnets/{id}/tags
# GET  /subnets/{id}/tags/{tag_id}
# Intended scope(s): project
# Target attrs: allocation_pools, cidr, dns_nameservers, dns_publish_fixed_ip, domain_id, enable_dhcp, gateway_ip, host_routes, id, ip_version, ipv6_address_mode, ipv6_ra_mode, name, network:tenant_id, network_id, networks:shared, router:external, segment_id, service_types, subnetpool_id, tenant_id
# "get_subnet:tags": "role:reader and project_id:%(project_id)s or rule:shared or rule:external_network or (rule:admin_only) or (role:reader and rule:network_owner)"

allow if {
	reader_and_creds_project_id_eq_input_project_id
}

allow if {
	# rule:shared
	neutron_lib.shared
}

allow if {
	# rule:external_network
	neutron_lib.external_network
}

allow if {
	# rule:admin_only
	neutron_lib.admin_only
}

allow if {
	reader_and_network_owner
}

# (role:reader and project_id:%(project_id)s)
reader_and_creds_project_id_eq_input_project_id if {
	"reader" in input.credentials.roles
	input.credentials.project_id == input.target.project_id
	neutron_lib.same_domain
}

# (role:reader and rule:network_owner)
reader_and_network_owner if {
	"reader" in input.credentials.roles
	neutron_lib.network_owner
}
