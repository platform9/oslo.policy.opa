package get_images

import data.glance_lib

# Get all available images
# GET  /v2/images
# Intended scope(s): project
# Target attrs: checksum, container_format, created_at, disk_format, domain_id, extra_properties, image_id, member, min_disk, min_ram, name, os_hash_algo, os_hash_value, os_hidden, owner, project_id, protected, size, status, tags, updated_at, virtual_size, visibility
# "get_images": "rule:context_is_admin or (role:reader and project_id:%(project_id)s)"

allow if {
	# rule:context_is_admin
	glance_lib.context_is_admin
}

allow if {
	reader_and_creds_project_id_eq_input_project_id
}

# (role:reader and project_id:%(project_id)s)
reader_and_creds_project_id_eq_input_project_id if {
	"reader" in input.credentials.roles
	input.credentials.project_id == input.target.project_id
	glance_lib.same_domain
}
