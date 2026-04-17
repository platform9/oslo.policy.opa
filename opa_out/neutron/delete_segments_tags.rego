package delete_segments_tags

import data.neutron_lib

# Delete the segment tags
# DELETE  /segments/{id}/tags
# DELETE  /segments/{id}/tags/{tag_id}
# Intended scope(s): project
# "delete_segments_tags": "rule:admin_only"

allow if {
	neutron_lib.admin_only
}
