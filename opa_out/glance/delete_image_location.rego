package delete_image_location

import data.glance_lib

# Deletes the location of given image
# PATCH  /v2/images/{image_id}
# Intended scope(s): project
# "delete_image_location": "rule:context_is_admin"

allow if {
	glance_lib.context_is_admin
}
