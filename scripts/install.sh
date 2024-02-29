#!/bin/bash

# Installation script to be run on a fresh OS.

dir=~/.venv/ansible

if [ ! -d $dir ]; then
    echo "Creating venv dir..."
    mkdir -p $dir
fi

echo "Creating python venv in ${dir}..."
python -m venv $dir

echo "Activating venv..."
source $dir/bin/activate

echo "Installing ansible..."
pip install ansible

echo -e "\nDONE\n"

echo "To run the main playbook:"
echo -e "\n"

echo "source ${dir}/bin/activate"
echo "ansible-playbook -l $(hostname -s) playbooks/main.yml -K -e 'ansible_user=$(whoami) ansible_port=22'"
echo -e "\n"
