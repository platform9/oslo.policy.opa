package update_segment

import data.lib

# Update a segment
# PUT  /segments/{id}
# Intended scope(s): project
#"update_segment": "rule:admin_only"


allow if {
  lib.admin_only
}

