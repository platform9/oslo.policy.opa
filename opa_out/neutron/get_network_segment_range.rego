package get_network_segment_range

import data.neutron_lib

# Get a network segment range
# GET  /network_segment_ranges
# GET  /network_segment_ranges/{id}
# Intended scope(s): project
# Target attrs: available, default, domain_id, id, maximum, minimum, name, network_type, physical_network, project_id, shared, used
# "get_network_segment_range": "rule:admin_only"

allow if {
	neutron_lib.admin_only
}
