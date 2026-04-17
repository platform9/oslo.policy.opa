package add_metadef_object

import data.glance_lib

# Create an object within a namespace.
# POST  /v2/metadefs/namespaces/{namespace_name}/objects
# Intended scope(s): project
# "add_metadef_object": "rule:metadef_admin"

allow if {
	glance_lib.metadef_admin
}
