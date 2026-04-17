package add_metadef_namespace

import data.glance_lib

# Create a namespace.
# POST  /v2/metadefs/namespaces
# Intended scope(s): project
# "add_metadef_namespace": "rule:metadef_admin"

allow if {
	glance_lib.metadef_admin
}
