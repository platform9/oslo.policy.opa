package create_subnet.segment_id

import data.lib

# Specify ``segment_id`` attribute when creating a subnet
# POST  /subnets
# Intended scope(s): project
#"create_subnet:segment_id": "rule:admin_only"


allow if {
  lib.admin_only
}

