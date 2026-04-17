package copy_image

import data.glance_lib

# Copy existing image to other stores
# POST  /v2/images/{image_id}/import
# Intended scope(s): project
# "copy_image": "rule:context_is_admin"

allow if {
	glance_lib.context_is_admin
}
