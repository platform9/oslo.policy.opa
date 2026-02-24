package volume_extension.volume_admin_actions.migrate_volume

import data.lib

# migrate a volume to a specified host.
# POST  /volumes/{volume_id}/action (os-migrate_volume)
#"volume_extension:volume_admin_actions:migrate_volume": "rule:admin_api"


allow if {
  lib.admin_api
}

