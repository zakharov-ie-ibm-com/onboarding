
dnf install https://dl.fedoraproject.org/pub/epel/epel-release-latest-8.noarch.rpm -y
dnf install ansible git -y
git clone https://github.com/IBM/community-automation.git
cd community-automation/ansible/csi-cephfs-fyre-play
echo "[bastion]" > inventory
echo "localhost       ansible_connection=local" >> inventory
ansible-playbook -i inventory csi-cephfs.yml --extra-vars "default_sc=rook-cephfs"
