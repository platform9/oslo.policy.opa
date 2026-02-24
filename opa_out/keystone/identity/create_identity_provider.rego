package identity.create_identity_provider

import data.lib

# Create identity provider.
# PUT  /v3/OS-FEDERATION/identity_providers/{idp_id}
# Intended scope(s): system, project
#"identity:create_identity_provider": "rule:admin_required"


allow if {
  lib.admin_required
}

