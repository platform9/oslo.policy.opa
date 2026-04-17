package get_port.tags

import data.neutron_lib

# Get the port tags
# GET  /ports/{id}/tags
# GET  /ports/{id}/tags/{tag_id}
# Intended scope(s): project
# Target attrs: admin_state_up, allowed_address_pairs, binding:host_id, binding:profile, binding:vif_details, binding:vif_type, binding:vnic_type, data_plane_status, device_id, device_owner, device_profile, dns_assignment, dns_domain, dns_name, domain_id, extra_dhcp_opts, fixed_ips, hardware_offload_type, hints, id, ip_allocation, mac_address, name, network:tenant_id, network_id, networks:shared, numa_affinity_policy, port_security_enabled, propagate_uplink_status, qos_network_policy_id, qos_policy_id, resource_request, status, tenant_id, trunk_details, trusted
# "get_port:tags": "rule:context_is_advsvc or (rule:admin_only) or (role:reader and rule:network_owner) or role:reader and project_id:%(project_id)s"

allow if {
	# rule:context_is_advsvc
	neutron_lib.context_is_advsvc
}

allow if {
	# rule:admin_only
	neutron_lib.admin_only
}

allow if {
	reader_and_network_owner
}

allow if {
	reader_and_creds_project_id_eq_input_project_id
}

# (role:reader and rule:network_owner)
reader_and_network_owner if {
	"reader" in input.credentials.roles
	neutron_lib.network_owner
}

# (role:reader and project_id:%(project_id)s)
reader_and_creds_project_id_eq_input_project_id if {
	"reader" in input.credentials.roles
	input.credentials.project_id == input.target.project_id
	neutron_lib.same_domain
}
