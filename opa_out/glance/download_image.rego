package download_image

import data.glance_lib

# Downloads given image
# GET  /v2/images/{image_id}/file
# Intended scope(s): project
# "download_image": "rule:context_is_admin or (role:member and (project_id:%(project_id)s or project_id:%(member)s or 'community':%(visibility)s or 'public':%(visibility)s or 'shared':%(visibility)s))"

allow if {
	# rule:context_is_admin
	glance_lib.context_is_admin
}

allow if {
	member_and_creds_project_id_eq_input_project_id_or_creds_project_id_eq_input_member_or_community_is_input_visibility_or_public_is_input_visibility_or_shared_is_input_visibility
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

# (role:member and (project_id:%(project_id)s or project_id:%(member)s or 'community':%(visibility)s or 'public':%(visibility)s or 'shared':%(visibility)s))
member_and_creds_project_id_eq_input_project_id_or_creds_project_id_eq_input_member_or_community_is_input_visibility_or_public_is_input_visibility_or_shared_is_input_visibility if {
	"member" in input.credentials.roles
	creds_project_id_eq_input_project_id_or_creds_project_id_eq_input_member_or_community_is_input_visibility_or_public_is_input_visibility_or_shared_is_input_visibility
}
