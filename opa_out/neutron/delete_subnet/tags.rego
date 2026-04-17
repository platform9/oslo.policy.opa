package delete_subnet.tags

import data.neutron_lib

# Delete the subnet tags
# DELETE  /subnets/{id}/tags
# DELETE  /subnets/{id}/tags/{tag_id}
# Intended scope(s): project
# Target attrs: allocation_pools, cidr, dns_nameservers, dns_publish_fixed_ip, domain_id, enable_dhcp, gateway_ip, host_routes, id, ip_version, ipv6_address_mode, ipv6_ra_mode, name, network:tenant_id, network_id, networks:shared, router:external, segment_id, service_types, subnetpool_id, tenant_id
# "delete_subnet:tags": "role:member and project_id:%(project_id)s or (rule:admin_only) or (role:member and rule:network_owner)"

allow if {
	member_and_creds_project_id_eq_input_project_id
}

allow if {
	# rule:admin_only
	neutron_lib.admin_only
}

allow if {
	member_and_network_owner
}

# (role:member and project_id:%(project_id)s)
member_and_creds_project_id_eq_input_project_id if {
	"member" in input.credentials.roles
	input.credentials.project_id == input.target.project_id
	neutron_lib.same_domain
}

# (role:member and rule:network_owner)
member_and_network_owner if {
	"member" in input.credentials.roles
	neutron_lib.network_owner
}
