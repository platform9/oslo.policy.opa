package create_subnet.service_types

import data.lib

# Specify ``service_types`` attribute when creating a subnet
# POST  /subnets
# Intended scope(s): project
#"create_subnet:service_types": "rule:admin_only"


allow if {
  lib.admin_only
}

