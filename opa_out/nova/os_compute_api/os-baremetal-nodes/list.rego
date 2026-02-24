package os_compute_api.os_baremetal_nodes.list

import data.lib

# List and show details of bare metal nodes.
#
# These APIs are proxy calls to the Ironic service and are deprecated.
# GET  /os-baremetal-nodes
# Intended scope(s): project
#"os_compute_api:os-baremetal-nodes:list": "rule:context_is_admin"


allow if {
  lib.context_is_admin
}

