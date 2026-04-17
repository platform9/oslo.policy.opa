package add_metadef_resource_type_association

import data.glance_lib

# Create meta definition resource types association.
# POST  /v2/metadefs/namespaces/{namespace_name}/resource_types
# Intended scope(s): project
# "add_metadef_resource_type_association": "rule:metadef_admin"

allow if {
	glance_lib.metadef_admin
}
