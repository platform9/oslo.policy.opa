package cache_list

import data.glance_lib

# List cache status
# GET  /v2/cache
# Intended scope(s): project
# "cache_list": "rule:context_is_admin"

allow if {
	glance_lib.context_is_admin
}
