package volume_extension.volume_admin_actions.migrate_volume_completion

import data.lib

# Complete a volume migration.
# POST  /volumes/{volume_id}/action (os-migrate_volume_completion)
#"volume_extension:volume_admin_actions:migrate_volume_completion": "rule:admin_api"


allow if {
  lib.admin_api
}

