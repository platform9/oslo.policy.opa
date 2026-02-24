package os_compute_api.servers.create.zero_disk_flavor

import data.lib

# This rule controls the compute API validation behavior of creating a
# server with a flavor that has 0 disk, indicating the server should
# be volume-backed.
#
# For a flavor with disk=0, the root disk will be set to exactly the
# size of the image used to deploy the instance. However, in this case
# the filter_scheduler cannot select the compute host based on the
# virtual image size. Therefore, 0 should only be used for volume
# booted instances or for testing purposes.
#
# WARNING: It is a potential security exposure to enable this policy
# rule if users can upload their own images since repeated attempts to
# create a disk=0 flavor instance with a large image can exhaust the
# local disk of the compute (or shared storage cluster). See bug
# https://bugs.launchpad.net/nova/+bug/1739646 for details.
# POST  /servers
# Intended scope(s): project
#"os_compute_api:servers:create:zero_disk_flavor": "rule:context_is_admin"


allow if {
  lib.context_is_admin
}

