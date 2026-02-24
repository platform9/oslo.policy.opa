package get_network.provider.segmentation_id

import data.lib

# Get ``provider:segmentation_id`` attribute of a network
# GET  /networks
# GET  /networks/{id}
# Intended scope(s): project
#"get_network:provider:segmentation_id": "rule:admin_only"


allow if {
  lib.admin_only
}

