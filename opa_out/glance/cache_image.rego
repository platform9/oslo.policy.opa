package cache_image

import data.glance_lib

# Queue image for caching
# PUT  /v2/cache/{image_id}
# Intended scope(s): project
# "cache_image": "rule:context_is_admin"

allow if {
	glance_lib.context_is_admin
}
