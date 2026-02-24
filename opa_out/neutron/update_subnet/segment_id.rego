package update_subnet.segment_id

import data.lib

# Update ``segment_id`` attribute of a subnet
# PUT  /subnets/{id}
# Intended scope(s): project
#"update_subnet:segment_id": "rule:admin_only"


allow if {
  lib.admin_only
}

