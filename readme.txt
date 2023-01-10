Compilation and installation of deb package from the sources

Execution with default ubuntu user. If other needed key -u may be used.
ansible-playbook -i hosts peervpn_playbook.yml --private-key=YOUR_OWN_PRIVATE_KEY \
-e "control=/path_to_your_controlfile/control"
