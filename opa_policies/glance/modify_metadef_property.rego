package modify_metadef_property

import data.glance_lib

# Update meta definition property.
# GET  /v2/metadefs/namespaces/{namespace_name}/properties/{property_name}
# Intended scope(s): project
# "modify_metadef_property": "rule:metadef_admin"

allow if {
	glance_lib.metadef_admin
}
