package get_network_segment_range.tags

import data.neutron_lib

# Get the network segment range tags
# GET  /network_segment_ranges/{id}/tags
# GET  /network_segment_ranges/{id}/tags/{tag_id}
# Intended scope(s): project
# Target attrs: available, default, domain_id, id, maximum, minimum, name, network_type, physical_network, project_id, shared, used
# "get_network_segment_range:tags": "rule:admin_only"

allow if {
	neutron_lib.admin_only
}
