package identity.update_identity_provider

import data.lib

# Update identity provider.
# PATCH  /v3/OS-FEDERATION/identity_providers/{idp_id}
# Intended scope(s): system, project
#"identity:update_identity_provider": "rule:admin_required"


allow if {
  lib.admin_required
}

