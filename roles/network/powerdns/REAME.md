REAME.md

toor@localhost:# source init.sh
toor@localhost:# ansible-prod site.yml -l dns

Add Openvpn key

toor@localhost:# ansible-prod roles/network/powerdns.yml --extra-vars '{"type":"master","mysql":"0"}' -l dns


Go over the link http://example.net/poweradmin/install to finish poweradmin installation

Take a cofee