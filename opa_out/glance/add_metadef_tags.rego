package add_metadef_tags

import data.glance_lib

# Create tag definitions.
# POST  /v2/metadefs/namespaces/{namespace_name}/tags
# Intended scope(s): project
# "add_metadef_tags": "rule:metadef_admin"

allow if {
	glance_lib.metadef_admin
}
