package modify_task

import data.glance_lib

# This policy is not used.
# DELETE  /v2/tasks/{task_id}
# Intended scope(s): project
# "modify_task": "rule:default"

allow if {
	glance_lib.dflt
}
