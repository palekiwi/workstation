#!/bin/bash

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

echo "\nDONE\n"

echo "To run the main playbook:"
echo "source ${dir}/bin/activate && ansible-playbook playbooks/main.yml -K"
