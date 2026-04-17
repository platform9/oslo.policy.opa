package get_image

import data.glance_lib

# Get specified image
# GET  /v2/images/{image_id}
# Intended scope(s): project
# Target attrs: checksum, container_format, created_at, disk_format, domain_id, extra_properties, image_id, member, min_disk, min_ram, name, os_hash_algo, os_hash_value, os_hidden, owner, project_id, protected, size, status, tags, updated_at, virtual_size, visibility
# "get_image": "rule:context_is_admin or (role:reader and (project_id:%(project_id)s or project_id:%(member)s or 'community':%(visibility)s or 'public':%(visibility)s or 'shared':%(visibility)s))"

allow if {
	# rule:context_is_admin
	glance_lib.context_is_admin
}

allow if {
	reader_and_creds_project_id_eq_input_project_id_or_creds_project_id_eq_input_member_or_community_is_input_visibility_or_public_is_input_visibility_or_shared_is_input_visibility
}

# (project_id:%(project_id)s or project_id:%(member)s or 'community':%(visibility)s or 'public':%(visibility)s or 'shared':%(visibility)s)
creds_project_id_eq_input_project_id_or_creds_project_id_eq_input_member_or_community_is_input_visibility_or_public_is_input_visibility_or_shared_is_input_visibility if {
	# project_id:%(project_id)s
	input.credentials.project_id == input.target.project_id
	glance_lib.same_domain
}

# (project_id:%(project_id)s or project_id:%(member)s or 'community':%(visibility)s or 'public':%(visibility)s or 'shared':%(visibility)s)
creds_project_id_eq_input_project_id_or_creds_project_id_eq_input_member_or_community_is_input_visibility_or_public_is_input_visibility_or_shared_is_input_visibility if {
	# project_id:%(member)s
	input.credentials.project_id == input.target.member
}

# (project_id:%(project_id)s or project_id:%(member)s or 'community':%(visibility)s or 'public':%(visibility)s or 'shared':%(visibility)s)
creds_project_id_eq_input_project_id_or_creds_project_id_eq_input_member_or_community_is_input_visibility_or_public_is_input_visibility_or_shared_is_input_visibility if {
	# 'community':%(visibility)s
	"community" == input.target.visibility
}

# (project_id:%(project_id)s or project_id:%(member)s or 'community':%(visibility)s or 'public':%(visibility)s or 'shared':%(visibility)s)
creds_project_id_eq_input_project_id_or_creds_project_id_eq_input_member_or_community_is_input_visibility_or_public_is_input_visibility_or_shared_is_input_visibility if {
	# 'public':%(visibility)s
	"public" == input.target.visibility
}

# (project_id:%(project_id)s or project_id:%(member)s or 'community':%(visibility)s or 'public':%(visibility)s or 'shared':%(visibility)s)
creds_project_id_eq_input_project_id_or_creds_project_id_eq_input_member_or_community_is_input_visibility_or_public_is_input_visibility_or_shared_is_input_visibility if {
	# 'shared':%(visibility)s
	"shared" == input.target.visibility
}

# (role:reader and (project_id:%(project_id)s or project_id:%(member)s or 'community':%(visibility)s or 'public':%(visibility)s or 'shared':%(visibility)s))
reader_and_creds_project_id_eq_input_project_id_or_creds_project_id_eq_input_member_or_community_is_input_visibility_or_public_is_input_visibility_or_shared_is_input_visibility if {
	"reader" in input.credentials.roles
	creds_project_id_eq_input_project_id_or_creds_project_id_eq_input_member_or_community_is_input_visibility_or_public_is_input_visibility_or_shared_is_input_visibility
}
