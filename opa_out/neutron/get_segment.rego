package get_segment

import data.neutron_lib

# Get a segment
# GET  /segments
# GET  /segments/{id}
# Intended scope(s): project
# Target attrs: domain_id, id, name, network_id, network_type, physical_network, segmentation_id
# "get_segment": "rule:admin_only"

allow if {
	neutron_lib.admin_only
}
