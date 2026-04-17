package list_metadef_resource_types

import data.glance_lib

# List meta definition resource types.
# GET  /v2/metadefs/resource_types
# Intended scope(s): project
# "list_metadef_resource_types": "rule:context_is_admin or (role:reader and (project_id:%(project_id)s or 'public':%(visibility)s))"

allow if {
	# rule:context_is_admin
	glance_lib.context_is_admin
}

allow if {
	reader_and_creds_project_id_eq_input_project_id_or_public_is_input_visibility
}

# (project_id:%(project_id)s or 'public':%(visibility)s)
creds_project_id_eq_input_project_id_or_public_is_input_visibility if {
	# project_id:%(project_id)s
	input.credentials.project_id == input.target.project_id
	glance_lib.same_domain
}

# (project_id:%(project_id)s or 'public':%(visibility)s)
creds_project_id_eq_input_project_id_or_public_is_input_visibility if {
	# 'public':%(visibility)s
	"public" == input.target.visibility
}

# (role:reader and (project_id:%(project_id)s or 'public':%(visibility)s))
reader_and_creds_project_id_eq_input_project_id_or_public_is_input_visibility if {
	"reader" in input.credentials.roles
	creds_project_id_eq_input_project_id_or_public_is_input_visibility
}
