package add_metadef_property

import data.glance_lib

# Create meta definition property.
# POST  /v2/metadefs/namespaces/{namespace_name}/properties
# Intended scope(s): project
# "add_metadef_property": "rule:metadef_admin"

allow if {
	glance_lib.metadef_admin
}
