package identity.update_domain_config

import data.lib

# Update domain configuration for either a domain, specific group or a
# specific option in a group.
# PATCH  /v3/domains/{domain_id}/config
# PATCH  /v3/domains/{domain_id}/config/{group}
# PATCH  /v3/domains/{domain_id}/config/{group}/{option}
# Intended scope(s): system, project
#"identity:update_domain_config": "rule:admin_required"


allow if {
  lib.admin_required
}

