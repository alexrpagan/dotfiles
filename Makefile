
install: install-bash install-tmux install-vim install-git

install-bash:
	@rm -f ~/.bash_aliases
	ln -s `pwd`/bash_aliases ~/.bash_aliases
	@rm -f ~/.bash_profile
	ln -s `pwd`/bash_profile ~/.bash_profile

install-tmux:
	@rm -f ~/.tmux.conf
	ln -s `pwd`/tmux.conf ~/.tmux.conf

install-vim:
	@rm -f ~/.vimrc
	ln -s `pwd`/vimrc ~/.vimrc

install-git:
	@rm -f ~/.gitignore
	ln -s `pwd`/gitignore ~/.gitignore
