package identity.create_domain_config

import data.lib

# Create domain configuration.
# PUT  /v3/domains/{domain_id}/config
# Intended scope(s): system, project
#"identity:create_domain_config": "rule:admin_required"


allow if {
  lib.admin_required
}

