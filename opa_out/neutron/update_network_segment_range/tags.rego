package update_network_segment_range.tags

import data.neutron_lib

# Update the network segment range tags
# PUT  /network_segment_ranges/{id}/tags
# PUT  /network_segment_ranges/{id}/tags/{tag_id}
# Intended scope(s): project
# Target attrs: available, default, domain_id, id, maximum, minimum, name, network_type, physical_network, project_id, shared, used
# "update_network_segment_range:tags": "rule:admin_only"

allow if {
	neutron_lib.admin_only
}
