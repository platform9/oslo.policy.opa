package identity.update_service_provider

import data.lib

# Update federated service provider.
# PATCH  /v3/OS-FEDERATION/service_providers/{service_provider_id}
# Intended scope(s): system, project
#"identity:update_service_provider": "rule:admin_required"


allow if {
  lib.admin_required
}

