package update_network_segment_range

import data.lib

# Update a network segment range
# PUT  /network_segment_ranges/{id}
# Intended scope(s): project
#"update_network_segment_range": "rule:admin_only"


allow if {
  lib.admin_only
}

