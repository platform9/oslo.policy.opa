package get_network.provider.network_type

import data.neutron_lib

# Get ``provider:network_type`` attribute of a network
# GET  /networks
# GET  /networks/{id}
# Intended scope(s): project
# Target attrs: admin_state_up, availability_zone_hints, availability_zones, dns_domain, domain_id, id, ipv4_address_scope, ipv6_address_scope, is_default, l2_adjacency, mtu, name, port_security_enabled, project_default, provider:network_type, provider:physical_network, provider:segmentation_id, qinq, qos_policy_id, router:external, segments, shared, status, subnets, tenant_id, vlan_transparent
# "get_network:provider:network_type": "rule:admin_only"

allow if {
	neutron_lib.admin_only
}
