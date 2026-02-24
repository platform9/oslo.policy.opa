package delete_segment

import data.lib

# Delete a segment
# DELETE  /segments/{id}
# Intended scope(s): project
#"delete_segment": "rule:admin_only"


allow if {
  lib.admin_only
}

