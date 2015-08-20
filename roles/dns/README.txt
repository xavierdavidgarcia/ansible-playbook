    Dynamic  Route53 update toolset.

    Whenever local, public and vpn IP gets changed do update Route53 corresponding entry for host name.
This playbook will create those names based on "{{ inventory_hostname }}" from Ansible inventory.
