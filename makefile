push:
	cp ./bashrc ~/.bashrc
	cp ./vimrc ~/.vimrc
	./push_git.py
pull:
	cp ~/.bashrc ./bashrc
	cp ~/.vimrc ./vimrc
	./pull_git.py
