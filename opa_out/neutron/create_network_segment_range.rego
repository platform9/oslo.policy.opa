package create_network_segment_range

import data.lib

# Create a network segment range
# POST  /network_segment_ranges
# Intended scope(s): project
#"create_network_segment_range": "rule:admin_only"


allow if {
  lib.admin_only
}

