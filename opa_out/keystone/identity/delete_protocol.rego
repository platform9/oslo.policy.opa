package identity.delete_protocol

import data.lib

# Delete federated protocol.
# DELETE  /v3/OS-FEDERATION/identity_providers/{idp_id}/protocols/{protocol_id}
# Intended scope(s): system, project
#"identity:delete_protocol": "rule:admin_required"


allow if {
  lib.admin_required
}

