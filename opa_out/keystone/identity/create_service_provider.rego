package identity.create_service_provider

import data.lib

# Create federated service provider.
# PUT  /v3/OS-FEDERATION/service_providers/{service_provider_id}
# Intended scope(s): system, project
#"identity:create_service_provider": "rule:admin_required"


allow if {
  lib.admin_required
}

