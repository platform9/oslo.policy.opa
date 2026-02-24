package create_network_segment_range.tags

import data.lib

# Create the network segment range tags
# POST  /network_segment_ranges/{id}/tags
# Intended scope(s): project
#"create_network_segment_range:tags": "rule:admin_only"


allow if {
  lib.admin_only
}

