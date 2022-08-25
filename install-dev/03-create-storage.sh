mkdir -p /home/kubeadmin/auth/
echo ""
echo "Add kubeadmin passwprd to file $HOME/auth/kubeadmin-password"
echo ""
read -p "Press ENTER to start editor... "

vi /home/kubeadmin/auth/kubeadmin-password


echo "********************************************************************"
echo " Add ssh key to github in order to checkout storage creating script "
echo "********************************************************************"

read -p "Press ENTER to exit... "
