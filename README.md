collectd
=======================

Custom collectd setup, for use with additional configuration service for elastic pollers.

Environment variables
---------------------

* `GIT_URL`
  - Git URL for cloning
* `PROJECT_PATH`
  - Project path root (e.g. /var/myapp)
* `COLLECTD_INCLUDES_PATH`
  - Includes path for additional collectd files (populated by separate controller)
* `GRAPHITE_HOST`
  - Graphite IP or hostname
* `GRAPHITE_PORT`
  - Graphite port
* `GRAPHITE_PREFIX`
  - Graphite prefix
