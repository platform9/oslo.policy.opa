package create_segment

import data.lib

# Create a segment
# POST  /segments
# Intended scope(s): project
#"create_segment": "rule:admin_only"


allow if {
  lib.admin_only
}

