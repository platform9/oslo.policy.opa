package create_network_segment_range.tags

import data.neutron_lib

# Create the network segment range tags
# POST  /network_segment_ranges/{id}/tags
# Intended scope(s): project
# Target attrs: domain_id, project_id, user_id
# "create_network_segment_range:tags": "rule:admin_only"

allow if {
	neutron_lib.admin_only
}
