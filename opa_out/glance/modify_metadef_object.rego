package modify_metadef_object

import data.glance_lib

# Update an object within a namespace.
# PUT  /v2/metadefs/namespaces/{namespace_name}/objects/{object_name}
# Intended scope(s): project
# "modify_metadef_object": "rule:metadef_admin"

allow if {
	glance_lib.metadef_admin
}
