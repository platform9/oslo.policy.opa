package remove_metadef_resource_type_association

import data.glance_lib

# Delete meta definition resource types association.
# POST  /v2/metadefs/namespaces/{namespace_name}/resource_types/{name}
# Intended scope(s): project
# "remove_metadef_resource_type_association": "rule:metadef_admin"

allow if {
	glance_lib.metadef_admin
}
