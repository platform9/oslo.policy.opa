package tasks_api_access

import data.glance_lib

# This is a generic blanket policy for protecting all task APIs. It is
# not granular and will not allow you to separate writable and
# readable task operations into different roles.
# GET  /v2/tasks/{task_id}
# GET  /v2/tasks
# POST  /v2/tasks
# DELETE  /v2/tasks/{task_id}
# Intended scope(s): project
# "tasks_api_access": "rule:context_is_admin"

allow if {
	glance_lib.context_is_admin
}
