package get_segments_tags

import data.lib

# Get the segment tags
# GET  /segments/{id}/tags
# GET  /segments/{id}/tags/{tag_id}
# Intended scope(s): project
#"get_segments_tags": "rule:admin_only"


allow if {
  lib.admin_only
}

