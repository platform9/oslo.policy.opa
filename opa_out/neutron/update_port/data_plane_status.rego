package update_port.data_plane_status

import data.neutron_lib

# Update ``data_plane_status`` attribute of a port
# PUT  /ports/{id}
# Intended scope(s): project
# Target attrs: admin_state_up, allowed_address_pairs, binding:host_id, binding:profile, binding:vif_details, binding:vif_type, binding:vnic_type, data_plane_status, device_id, device_owner, device_profile, dns_assignment, dns_domain, dns_name, domain_id, extra_dhcp_opts, fixed_ips, hardware_offload_type, hints, id, ip_allocation, mac_address, name, network:tenant_id, network_id, networks:shared, numa_affinity_policy, port_security_enabled, propagate_uplink_status, qos_network_policy_id, qos_policy_id, resource_request, status, tenant_id, trunk_details, trusted
# "update_port:data_plane_status": "rule:admin_only or role:data_plane_integrator"

allow if {
	# rule:admin_only
	neutron_lib.admin_only
}

allow if {
	# role:data_plane_integrator
	"data_plane_integrator" in input.credentials.roles
}
