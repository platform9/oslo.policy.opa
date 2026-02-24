package update_subnet.service_types

import data.lib

# Update ``service_types`` attribute of a subnet
# PUT  /subnets/{id}
# Intended scope(s): project
#"update_subnet:service_types": "rule:admin_only"


allow if {
  lib.admin_only
}

