package create_segment

import data.neutron_lib

# Create a segment
# POST  /segments
# Intended scope(s): project
# Target attrs: domain_id, id, name, network_id, network_type, physical_network, segmentation_id
# "create_segment": "rule:admin_only"

allow if {
	neutron_lib.admin_only
}
