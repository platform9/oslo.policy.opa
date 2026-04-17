package volume_extension.volume_admin_actions.migrate_volume_completion

import data.cinder_lib

# Complete a volume migration.
# POST  /volumes/{volume_id}/action (os-migrate_volume_completion)
# "volume_extension:volume_admin_actions:migrate_volume_completion": "rule:admin_api"

allow if {
	cinder_lib.admin_api
}
