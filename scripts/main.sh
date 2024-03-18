# set -ex

os_id=$(source /etc/os-release; echo $ID)
requirements_path=$JACE_ENV/scripts/ansible/requirements

echo "\$ID: $ID"
echo "\$os_id: $os_id"

ansible-galaxy install -r $requirements_path/common.yml
ansible-galaxy install -r $requirements_path/$os_id.yml

ansible-playbook --ask-become-pass $JACE_ENV/scripts/ansible/main.yml

