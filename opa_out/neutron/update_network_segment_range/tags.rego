package update_network_segment_range.tags

import data.lib

# Update the network segment range tags
# PUT  /network_segment_ranges/{id}/tags
# PUT  /network_segment_ranges/{id}/tags/{tag_id}
# Intended scope(s): project
#"update_network_segment_range:tags": "rule:admin_only"


allow if {
  lib.admin_only
}

