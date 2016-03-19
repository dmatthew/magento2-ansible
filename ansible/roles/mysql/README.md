## Connecting with MySQL Workbench ##

1. `Connection Method: Standard TCP/IP over SSH`.
2. `SSH Hostname: 192.168.11.22:22`. This is an example. The real value should match what you have in your Vagrantfile.
3. `SSH Username: vagrant`.
4. `SSH Password: vagrant`.
5. `SSH Key File: ` should be empty.
6. `MySQL Hostname: 127.0.0.1`.
7. `MySQL Server Port: 3306`.
8. `Username: root`.
9. `Password: password`. This is an example. The real value should match what you used as the root user password from the `mysql.root_password` ansible variable.