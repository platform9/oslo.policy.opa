package delete_network_segment_range

import data.lib

# Delete a network segment range
# DELETE  /network_segment_ranges/{id}
# Intended scope(s): project
#"delete_network_segment_range": "rule:admin_only"


allow if {
  lib.admin_only
}

