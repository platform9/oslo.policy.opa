package create_floatingip.floating_ip_address

import data.neutron_lib

# Create a floating IP with a specific IP address
# POST  /floatingips
# Intended scope(s): project
# Target attrs: distributed, dns_domain, dns_name, domain_id, fixed_ip_address, floating_ip_address, floating_network_id, id, port_details, port_forwardings, port_id, qos_network_policy_id, qos_policy_id, router_id, status, tenant_id
# "create_floatingip:floating_ip_address": "(rule:admin_only) or (role:manager and project_id:%(project_id)s)"

allow if {
	# rule:admin_only
	neutron_lib.admin_only
}

allow if {
	manager_and_creds_project_id_eq_input_project_id
}

# (role:manager and project_id:%(project_id)s)
manager_and_creds_project_id_eq_input_project_id if {
	"manager" in input.credentials.roles
	input.credentials.project_id == input.target.project_id
	neutron_lib.same_domain
}
