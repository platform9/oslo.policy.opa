package get_network_segment_range

import data.lib

# Get a network segment range
# GET  /network_segment_ranges
# GET  /network_segment_ranges/{id}
# Intended scope(s): project
#"get_network_segment_range": "rule:admin_only"


allow if {
  lib.admin_only
}

