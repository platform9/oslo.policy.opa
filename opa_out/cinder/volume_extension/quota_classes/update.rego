package volume_extension.quota_classes.update

import data.lib

# Update project quota class.
# PUT  /os-quota-class-sets/{project_id}
#"volume_extension:quota_classes:update": "rule:admin_api"


allow if {
  lib.admin_api
}

