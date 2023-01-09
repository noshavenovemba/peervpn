Compilation and installation of deb package from the sources

Need to execute peervpn_playbook.yml with your own private-key value and hosts file
ansible-playbook -i hosts peervpn_playbook.yml --user ubuntu --private-key=peervpntest.pem

Need to be fixed
1 replace home directory with tilde
2 probably need to combine package structure with building
