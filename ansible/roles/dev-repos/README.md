dev-repos
=========

Downloads and configures applications.

Requirements
------------

* ssh agent forwarding must be set up correctly on the host, or the playbook won't be able to check out private repos from github

Role Variables
--------------

* update_repos: If true, repos will be updated when provisioning, otherwise they remain in their current state
* python_repos: A list of repos which should be checked out, virtualenv requirements installed, etc.
* other_repos: A list of repos which should be checked out into `src/` - no virtualenvs are created for these repos
* nginx_confs: A list of configuration values for nginx

Dependencies
------------

None

Author Information
------------------

Initial role by Michael Warkentin (michael@waveapps.com)
