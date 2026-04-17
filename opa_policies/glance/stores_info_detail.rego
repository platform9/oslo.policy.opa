package stores_info_detail

import data.glance_lib

# Expose store specific information
# GET  /v2/info/stores/detail
# Intended scope(s): project
# "stores_info_detail": "rule:context_is_admin"

allow if {
	glance_lib.context_is_admin
}
