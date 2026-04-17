package update_segments_tags

import data.neutron_lib

# Update the segment tags
# PUT  /segments/{id}/tags
# PUT  /segments/{id}/tags/{tag_id}
# Intended scope(s): project
# "update_segments_tags": "rule:admin_only"

allow if {
	neutron_lib.admin_only
}
