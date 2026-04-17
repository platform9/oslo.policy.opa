package get_network_ip_availability

import data.neutron_lib

# Get network IP availability
# GET  /network-ip-availabilities
# GET  /network-ip-availabilities/{network_id}
# Intended scope(s): project
# Target attrs: domain_id, network_id, network_name, subnet_ip_availability, tenant_id, total_ips, used_ips
# "get_network_ip_availability": "rule:admin_only"

allow if {
	# rule:admin_only
	neutron_lib.admin_only
}

allow if {
	# role:member
	"member" in input.credentials.roles
}

allow if {
	# field:networks:shared:True
	input.target["networks:shared"] == true
}
