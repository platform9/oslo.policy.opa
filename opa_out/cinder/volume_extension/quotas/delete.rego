package volume_extension.quotas.delete

import data.lib

# Delete project quota.
# DELETE  /os-quota-sets/{project_id}
#"volume_extension:quotas:delete": "rule:admin_api"


allow if {
  lib.admin_api
}

