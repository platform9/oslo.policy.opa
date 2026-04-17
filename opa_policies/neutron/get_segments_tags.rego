package get_segments_tags

import data.neutron_lib

# Get the segment tags
# GET  /segments/{id}/tags
# GET  /segments/{id}/tags/{tag_id}
# Intended scope(s): project
# "get_segments_tags": "rule:admin_only"

allow if {
	neutron_lib.admin_only
}
