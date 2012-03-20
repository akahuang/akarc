download:
	git pull
	cp ./bashrc ~/.bashrc
	cp ./vimrc ~/.vimrc
	./push_git.py
upload:
	cp ~/.bashrc ./bashrc
	cp ~/.vimrc ./vimrc
	./pull_git.py
	git commit -a -m "upload"
	git push
