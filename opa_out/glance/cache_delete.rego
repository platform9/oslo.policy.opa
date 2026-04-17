package cache_delete

import data.glance_lib

# Delete image(s) from cache and/or queue
# DELETE  /v2/cache
# DELETE  /v2/cache/{image_id}
# Intended scope(s): project
# "cache_delete": "rule:context_is_admin"

allow if {
	glance_lib.context_is_admin
}
