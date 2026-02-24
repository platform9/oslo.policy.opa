package identity.update_protocol

import data.lib

# Update federated protocol.
# PATCH  /v3/OS-FEDERATION/identity_providers/{idp_id}/protocols/{protocol_id}
# Intended scope(s): system, project
#"identity:update_protocol": "rule:admin_required"


allow if {
  lib.admin_required
}

