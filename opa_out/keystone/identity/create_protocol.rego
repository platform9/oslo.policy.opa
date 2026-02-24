package identity.create_protocol

import data.lib

# Create federated protocol.
# PUT  /v3/OS-FEDERATION/identity_providers/{idp_id}/protocols/{protocol_id}
# Intended scope(s): system, project
#"identity:create_protocol": "rule:admin_required"


allow if {
  lib.admin_required
}

