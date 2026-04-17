package compute.aggregates.images

import data.nova_lib

# Request image caching for an aggregate
# POST  /os-aggregates/{aggregate_id}/images
# Intended scope(s): project
# "compute:aggregates:images": "rule:context_is_admin"

allow if {
	nova_lib.context_is_admin
}
