cp -r .vim* ~
cp .tmux.conf ~
cp .inputrc ~
cp .gitconfig ~
cp .git_message_template ~
echo "source $(readlink -f .sab_bashrc)" >> ~/.bashrc
