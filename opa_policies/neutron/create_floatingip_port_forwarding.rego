package create_floatingip_port_forwarding

import data.neutron_lib

# Create a floating IP port forwarding
# POST  /floatingips/{floatingip_id}/port_forwardings
# Intended scope(s): project
# Target attrs: distributed, dns_domain, dns_name, domain_id, fixed_ip_address, floating_ip_address, floating_network_id, id, port_details, port_forwardings, port_id, qos_network_policy_id, qos_policy_id, router_id, status, tenant_id
# "create_floatingip_port_forwarding": "(rule:admin_only) or (role:member and rule:ext_parent_owner)"

allow if {
	# rule:admin_only
	neutron_lib.admin_only
}

allow if {
	member_and_tenant_id_
}

# (role:member and tenant_id:%(ext_parent_floatingip:tenant_id)s)
member_and_tenant_id_ if {
	"member" in input.credentials.roles
	input.target["ext_parent:tenant_id"] == input.credentials.tenant_id
	neutron_lib.same_domain
}
