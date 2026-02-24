package os_compute_api.os_extended_server_attributes

import data.lib

# Return extended attributes for server.
#
# This rule will control the visibility for a set of servers
# attributes:
#
# - ``OS-EXT-SRV-ATTR:host`` - ``OS-EXT-SRV-ATTR:instance_name`` -
# ``OS-EXT-SRV-ATTR:reservation_id`` (since microversion 2.3) - ``OS-
# EXT-SRV-ATTR:launch_index`` (since microversion 2.3) - ``OS-EXT-SRV-
# ATTR:hostname`` (since microversion 2.3) - ``OS-EXT-SRV-
# ATTR:kernel_id`` (since microversion 2.3) - ``OS-EXT-SRV-
# ATTR:ramdisk_id`` (since microversion 2.3) - ``OS-EXT-SRV-
# ATTR:root_device_name`` (since microversion 2.3) - ``OS-EXT-SRV-
# ATTR:user_data`` (since microversion 2.3)
#
# Microvision 2.75 added the above attributes in the ``PUT
# /servers/{server_id}`` and ``POST /servers/{server_id}/action
# (rebuild)`` API responses which are also controlled by this policy
# rule, like the ``GET /servers*`` APIs.
#
# Microversion 2.90 made the ``OS-EXT-SRV-ATTR:hostname`` attribute
# available to all users, so this policy has no effect on that field
# for microversions 2.90 and greater. Controlling the visibility of
# this attribute for all microversions is therefore deprecated and
# will be removed in a future release.
# GET  /servers/{id}
# GET  /servers/detail
# PUT  /servers/{server_id}
# POST  /servers/{server_id}/action (rebuild)
# Intended scope(s): project
#"os_compute_api:os-extended-server-attributes": "rule:context_is_admin"


allow if {
  lib.context_is_admin
}

