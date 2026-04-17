package delete_network.tags

import data.neutron_lib

# Delete the network tags
# DELETE  /networks/{id}/tags
# DELETE  /networks/{id}/tags/{tag_id}
# Intended scope(s): project
# Target attrs: admin_state_up, availability_zone_hints, availability_zones, dns_domain, domain_id, id, ipv4_address_scope, ipv6_address_scope, is_default, l2_adjacency, mtu, name, port_security_enabled, project_default, provider:network_type, provider:physical_network, provider:segmentation_id, qinq, qos_policy_id, router:external, segments, shared, status, subnets, tenant_id, vlan_transparent
# "delete_network:tags": "(rule:admin_only) or (role:member and project_id:%(project_id)s)"

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
