package create_segments_tags

import data.lib

# Create the segment tags
# POST  /segments/{id}/tags
# Intended scope(s): project
#"create_segments_tags": "rule:admin_only"


allow if {
  lib.admin_only
}

