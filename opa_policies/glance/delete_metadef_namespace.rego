package delete_metadef_namespace

import data.glance_lib

# Delete a namespace.
# DELETE  /v2/metadefs/namespaces/{namespace_name}
# Intended scope(s): project
# "delete_metadef_namespace": "rule:metadef_admin"

allow if {
	glance_lib.metadef_admin
}
