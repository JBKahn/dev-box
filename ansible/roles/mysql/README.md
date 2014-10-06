mysql
========

Installs and configures MySQL.

Requirements
------------

None

Role Variables
--------------

* mysql_root_password: The password to be set for the root mysql user. This is used in both tasks and the .my.cnf.j2 template
* mysql_hosts: A list of hosts for which to set the root password
* users: A list of OS users which should get a copy of the .my.cnf file

Dependencies
------------

None

Author Information
------------------

Initial role by Michael Warkentin (michael@waveapps.com)
