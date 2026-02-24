package volume_extension.quotas.update

import data.lib

# Update project quota.
# PUT  /os-quota-sets/{project_id}
#"volume_extension:quotas:update": "rule:admin_api"


allow if {
  lib.admin_api
}

