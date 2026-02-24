package volume_extension.quotas.show

import data.lib

# Show project quota (including usage and default).
# GET  /os-quota-sets/{project_id}
# GET  /os-quota-sets/{project_id}/default
# GET  /os-quota-sets/{project_id}?usage=True
#"volume_extension:quotas:show": "rule:xena_system_admin_or_project_reader"


allow if {
  lib.xena_system_admin_or_project_reader
}

