package get_floatingip.tags

import data.neutron_lib

# Get the floating IP tags
# GET  /floatingips/{id}/tags
# GET  /floatingips/{id}/tags/{tag_id}
# Intended scope(s): project
# Target attrs: distributed, dns_domain, dns_name, domain_id, fixed_ip_address, floating_ip_address, floating_network_id, id, port_details, port_forwardings, port_id, qos_network_policy_id, qos_policy_id, router_id, status, tenant_id
# "get_floatingip:tags": "(rule:admin_only) or (role:reader and project_id:%(project_id)s)"

allow if {
	# rule:admin_only
	neutron_lib.admin_only
}

allow if {
	reader_and_creds_project_id_eq_input_project_id
}

# (role:reader and project_id:%(project_id)s)
reader_and_creds_project_id_eq_input_project_id if {
	"reader" in input.credentials.roles
	input.credentials.project_id == input.target.project_id
	neutron_lib.same_domain
}
