package backup.backup_import

import data.cinder_lib

# Import backup.
# POST  /backups/{backup_id}/import_record
# Target attrs: availability_zone, container, created_at, data_timestamp, deleted, deleted_at, display_description, display_name, domain_id, encryption_key_id, fail_reason, host, id, num_dependent_backups, object_count, parent_id, project_id, restore_volume_id, service, service_metadata, size, snapshot_id, status, temp_snapshot_id, temp_volume_id, updated_at, user_id, volume_id
# "backup:backup-import": "rule:admin_api"

allow if {
	cinder_lib.admin_api
}
