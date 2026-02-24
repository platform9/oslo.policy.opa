package delete_network_segment_range.tags

import data.lib

# Delete the network segment range tags
# DELETE  /network_segment_ranges/{id}/tags
# DELETE  /network_segment_ranges/{id}/tags/{tag_id}
# Intended scope(s): project
#"delete_network_segment_range:tags": "rule:admin_only"


allow if {
  lib.admin_only
}

