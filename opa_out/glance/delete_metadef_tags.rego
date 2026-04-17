package delete_metadef_tags

import data.glance_lib

# Delete tag definitions.
# DELETE  /v2/metadefs/namespaces/{namespace_name}/tags
# Intended scope(s): project
# "delete_metadef_tags": "rule:metadef_admin"

allow if {
	glance_lib.metadef_admin
}
