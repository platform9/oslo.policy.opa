package update_segment

import data.neutron_lib

# Update a segment
# PUT  /segments/{id}
# Intended scope(s): project
# Target attrs: domain_id, id, name, network_id, network_type, physical_network, segmentation_id
# "update_segment": "rule:admin_only"

allow if {
	neutron_lib.admin_only
}
