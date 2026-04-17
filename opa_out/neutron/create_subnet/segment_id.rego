package create_subnet.segment_id

import data.neutron_lib

# Specify ``segment_id`` attribute when creating a subnet
# POST  /subnets
# Intended scope(s): project
# Target attrs: allocation_pools, cidr, dns_nameservers, dns_publish_fixed_ip, domain_id, enable_dhcp, gateway_ip, host_routes, id, ip_version, ipv6_address_mode, ipv6_ra_mode, name, network:tenant_id, network_id, networks:shared, router:external, segment_id, service_types, subnetpool_id, tenant_id
# "create_subnet:segment_id": "rule:admin_only"

allow if {
	neutron_lib.admin_only
}
