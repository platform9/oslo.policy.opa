package delete_network_segment_range

import data.neutron_lib

# Delete a network segment range
# DELETE  /network_segment_ranges/{id}
# Intended scope(s): project
# Target attrs: available, default, domain_id, id, maximum, minimum, name, network_type, physical_network, project_id, shared, used
# "delete_network_segment_range": "rule:admin_only"

allow if {
	neutron_lib.admin_only
}
