package create_network.provider.segmentation_id

import data.lib

# Specify ``provider:segmentation_id`` when creating a network
# POST  /networks
# Intended scope(s): project
#"create_network:provider:segmentation_id": "rule:admin_only"


allow if {
  lib.admin_only
}

