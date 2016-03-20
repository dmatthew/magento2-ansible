[www]

; Unix user/group of processes
user = vagrant
group = vagrant

; Unix socket details
listen = {{ nginx.unix_socket_path }}
listen.owner = {{ php.fpm_user }}
listen.group = {{ php.fpm_group }}
listen.mode = 0660

pm = dynamic
pm.max_children = 50
pm.start_servers = 5
pm.min_spare_servers = 5
pm.max_spare_servers = 30

php_admin_value[memory_limit] = 512M
