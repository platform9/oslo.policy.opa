package create_subnet

import data.neutron_lib

# Create a subnet
# POST  /subnets
# Intended scope(s): project
# Target attrs: allocation_pools, cidr, dns_nameservers, dns_publish_fixed_ip, domain_id, enable_dhcp, gateway_ip, host_routes, id, ip_version, ipv6_address_mode, ipv6_ra_mode, name, network:tenant_id, network_id, networks:shared, router:external, segment_id, service_types, subnetpool_id, tenant_id
# "create_subnet": "(rule:admin_only) or (role:member and rule:network_owner)"

allow if {
	# rule:global_admin
	neutron_lib.global_admin
}

allow if {
	admin_and_creds_project_id_eq_input_project_id
}

allow if {
	member_and_creds_project_id_eq_input_project_id
}

# (role:admin and project_id:%(project_id)s)
admin_and_creds_project_id_eq_input_project_id if {
	"admin" in input.credentials.roles
	input.credentials.project_id == input.target.project_id
	neutron_lib.same_domain
}

# (role:member and project_id:%(project_id)s)
member_and_creds_project_id_eq_input_project_id if {
	"member" in input.credentials.roles
	input.credentials.project_id == input.target.project_id
	neutron_lib.same_domain
}
