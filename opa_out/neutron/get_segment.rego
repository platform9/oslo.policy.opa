package get_segment

import data.lib

# Get a segment
# GET  /segments
# GET  /segments/{id}
# Intended scope(s): project
#"get_segment": "rule:admin_only"


allow if {
  lib.admin_only
}

