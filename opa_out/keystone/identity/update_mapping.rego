package identity.update_mapping

import data.lib

# Update a federated mapping.
# PATCH  /v3/OS-FEDERATION/mappings/{mapping_id}
# Intended scope(s): system, project
#"identity:update_mapping": "rule:admin_required"


allow if {
  lib.admin_required
}

