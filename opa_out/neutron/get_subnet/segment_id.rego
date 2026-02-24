package get_subnet.segment_id

import data.lib

# Get ``segment_id`` attribute of a subnet
# GET  /subnets
# GET  /subnets/{id}
# Intended scope(s): project
#"get_subnet:segment_id": "rule:admin_only"


allow if {
  lib.admin_only
}

