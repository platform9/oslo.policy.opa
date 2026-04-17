package get_network.tags

import data.neutron_lib

# Get the network tags
# GET  /networks/{id}/tags
# GET  /networks/{id}/tags/{tag_id}
# Intended scope(s): project
# Target attrs: admin_state_up, availability_zone_hints, availability_zones, dns_domain, domain_id, id, ipv4_address_scope, ipv6_address_scope, is_default, l2_adjacency, mtu, name, port_security_enabled, project_default, provider:network_type, provider:physical_network, provider:segmentation_id, qinq, qos_policy_id, router:external, segments, shared, status, subnets, tenant_id, vlan_transparent
# "get_network:tags": "(rule:admin_only) or (role:reader and project_id:%(project_id)s) or rule:shared or rule:external or rule:context_is_advsvc"

allow if {
	# rule:admin_only
	neutron_lib.admin_only
}

allow if {
	reader_and_creds_project_id_eq_input_project_id
}

allow if {
	# rule:shared
	neutron_lib.shared
}

allow if {
	# rule:external
	neutron_lib.external
}

allow if {
	# rule:context_is_advsvc
	neutron_lib.context_is_advsvc
}

# (role:reader and project_id:%(project_id)s)
reader_and_creds_project_id_eq_input_project_id if {
	"reader" in input.credentials.roles
	input.credentials.project_id == input.target.project_id
	neutron_lib.same_domain
}
