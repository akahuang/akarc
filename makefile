push: bashrc vimrc
	cp ./bashrc ~/.bashrc
	cp ./vimrc ~/.vimrc
pull:
	cp ~/.bashrc ./bashrc
	cp ~/.vimrc ./vimrc
