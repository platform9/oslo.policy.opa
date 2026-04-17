package delete_metadef_object

import data.glance_lib

# Delete an object within a namespace.
# DELETE  /v2/metadefs/namespaces/{namespace_name}/objects/{object_name}
# Intended scope(s): project
# "delete_metadef_object": "rule:metadef_admin"

allow if {
	glance_lib.metadef_admin
}
