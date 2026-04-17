package remove_metadef_property

import data.glance_lib

# Delete meta definition property.
# DELETE  /v2/metadefs/namespaces/{namespace_name}/properties/{property_name}
# Intended scope(s): project
# "remove_metadef_property": "rule:metadef_admin"

allow if {
	glance_lib.metadef_admin
}
