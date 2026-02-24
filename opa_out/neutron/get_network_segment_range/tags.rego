package get_network_segment_range.tags

import data.lib

# Get the network segment range tags
# GET  /network_segment_ranges/{id}/tags
# GET  /network_segment_ranges/{id}/tags/{tag_id}
# Intended scope(s): project
#"get_network_segment_range:tags": "rule:admin_only"


allow if {
  lib.admin_only
}

