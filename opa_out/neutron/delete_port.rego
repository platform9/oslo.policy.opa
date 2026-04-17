package delete_port

import data.neutron_lib

# Delete a port
# DELETE  /ports/{id}
# Intended scope(s): project
# Target attrs: admin_state_up, allowed_address_pairs, binding:host_id, binding:profile, binding:vif_details, binding:vif_type, binding:vnic_type, data_plane_status, device_id, device_owner, device_profile, dns_assignment, dns_domain, dns_name, domain_id, extra_dhcp_opts, fixed_ips, hardware_offload_type, hints, id, ip_allocation, mac_address, name, network:tenant_id, network_id, networks:shared, numa_affinity_policy, port_security_enabled, propagate_uplink_status, qos_network_policy_id, qos_policy_id, resource_request, status, tenant_id, trunk_details, trusted
# "delete_port": "(rule:admin_only) or (rule:service_api) or role:member and rule:network_owner or role:member and project_id:%(project_id)s"

allow if {
	# rule:admin_only
	neutron_lib.admin_only
}

allow if {
	# rule:service_api
	neutron_lib.service_api
}

allow if {
	member_and_network_owner
}

allow if {
	member_and_creds_project_id_eq_input_project_id
}

# (role:member and rule:network_owner)
member_and_network_owner if {
	"member" in input.credentials.roles
	neutron_lib.network_owner
}

# (role:member and project_id:%(project_id)s)
member_and_creds_project_id_eq_input_project_id if {
	"member" in input.credentials.roles
	input.credentials.project_id == input.target.project_id
	neutron_lib.same_domain
}
