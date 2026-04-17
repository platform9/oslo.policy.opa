package get_tasks

import data.glance_lib

# List tasks for all images.
#
# This granular policy controls access to tasks, both from the tasks
# API as well as internal locations in Glance that use tasks (like
# import). Practically this cannot be more restrictive than the policy
# that controls import or things will break, and changing it from the
# default is almost certainly not what you want. Access to the
# external tasks API should be restricted as desired by the
# tasks_api_access policy. This may change in the future.
# GET  /v2/tasks
# Intended scope(s): project
# "get_tasks": "rule:default"

allow if {
	glance_lib.dflt
}
