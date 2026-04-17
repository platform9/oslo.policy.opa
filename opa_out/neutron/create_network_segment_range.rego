package create_network_segment_range

import data.neutron_lib

# Create a network segment range
# POST  /network_segment_ranges
# Intended scope(s): project
# Target attrs: domain_id, project_id, user_id
# "create_network_segment_range": "rule:admin_only"

allow if {
	neutron_lib.admin_only
}
