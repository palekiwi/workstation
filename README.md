# Setup Yubikey for SSH aunthentication

Required variables:

    hostname: string

1. Run script to install ansible:
    `sh ./start.sh`

2. Run playbooks/main.yml
    `ansible-playbook playbooks/main.yml -K`

3. Edit key to set trust:
    `gpg --edit-key <key>`

4. Run playbooks/tailscale_login.yml to login into tailscale.
    `ansible-playbook playbooks/tailscale_login.yml -JK`

TODO:

- first run with localhost
- replace inventory_hostname with ansible_hostname 
