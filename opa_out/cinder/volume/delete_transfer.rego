package volume.delete_transfer

import data.cinder_lib

# Delete volume transfer.
# DELETE  /os-volume-transfer/{transfer_id}
# DELETE  /volume-transfers/{transfer_id}
# Target attrs: _name_id, attach_status, availability_zone, bootable, cluster_name, consistencygroup_id, created_at, deleted, deleted_at, display_description, display_name, domain_id, ec2_id, encryption_key_id, group_id, host, id, launched_at, migration_status, multiattach, previous_status, project_id, provider_auth, provider_geometry, provider_id, provider_location, replication_driver_data, replication_extended_status, replication_status, scheduled_at, service_uuid, shared_targets, size, snapshot_id, source_volid, status, terminated_at, updated_at, use_quota, user_id, volume_type_id
# "volume:delete_transfer": "rule:xena_system_admin_or_project_member"

allow if {
	cinder_lib.xena_system_admin_or_project_member
}
