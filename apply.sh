cp -r .vim* ~
cp .tmux.conf ~
cp .inputrc ~
cp .gitconfig ~
echo "source $(readlink -f .sab_bashrc)" >> ~/.bashrc
