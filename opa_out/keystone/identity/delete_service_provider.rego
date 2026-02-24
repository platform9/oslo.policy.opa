package identity.delete_service_provider

import data.lib

# Delete federated service provider.
# DELETE  /v3/OS-FEDERATION/service_providers/{service_provider_id}
# Intended scope(s): system, project
#"identity:delete_service_provider": "rule:admin_required"


allow if {
  lib.admin_required
}

