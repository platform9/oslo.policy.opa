package publicize_image

import data.glance_lib

# Publicize given image
# PATCH  /v2/images/{image_id}
# Intended scope(s): project
# "publicize_image": "rule:context_is_admin"

allow if {
	glance_lib.context_is_admin
}
