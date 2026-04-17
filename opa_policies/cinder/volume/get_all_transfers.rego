package volume.get_all_transfers

import data.cinder_lib

# List volume transfer.
# GET  /os-volume-transfer
# GET  /os-volume-transfer/detail
# GET  /volume_transfers
# GET  /volume-transfers/detail
# Target attrs: _name_id, attach_status, availability_zone, bootable, cluster_name, consistencygroup_id, created_at, deleted, deleted_at, display_description, display_name, domain_id, ec2_id, encryption_key_id, group_id, host, id, launched_at, migration_status, multiattach, previous_status, project_id, provider_auth, provider_geometry, provider_id, provider_location, replication_driver_data, replication_extended_status, replication_status, scheduled_at, service_uuid, shared_targets, size, snapshot_id, source_volid, status, terminated_at, updated_at, use_quota, user_id, volume_type_id
# "volume:get_all_transfers": "rule:xena_system_admin_or_project_reader"

allow if {
	cinder_lib.xena_system_admin_or_project_reader
}
