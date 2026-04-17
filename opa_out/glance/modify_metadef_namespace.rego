package modify_metadef_namespace

import data.glance_lib

# Modify an existing namespace.
# PUT  /v2/metadefs/namespaces/{namespace_name}
# Intended scope(s): project
# "modify_metadef_namespace": "rule:metadef_admin"

allow if {
	glance_lib.metadef_admin
}
