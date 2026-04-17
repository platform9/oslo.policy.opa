package modify_metadef_tag

import data.glance_lib

# Update tag definition.
# PUT  /v2/metadefs/namespaces/{namespace_name}/tags/{tag_name}
# Intended scope(s): project
# "modify_metadef_tag": "rule:metadef_admin"

allow if {
	glance_lib.metadef_admin
}
