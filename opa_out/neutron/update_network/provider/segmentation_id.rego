package update_network.provider.segmentation_id

import data.lib

# Update ``provider:segmentation_id`` attribute of a network
# PUT  /networks/{id}
# Intended scope(s): project
#"update_network:provider:segmentation_id": "rule:admin_only"


allow if {
  lib.admin_only
}

