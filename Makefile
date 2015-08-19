install: install-bash install-tmux install-vim install-git install-slate

install-bash:
	@rm -f ~/.bash_aliases
	ln -s `pwd`/bash_aliases ~/.bash_aliases
	@rm -f ~/.bash_profile
	ln -s `pwd`/bash_profile ~/.bash_profile
	@rm -f ~/.inputrc
	ln -s `pwd`/inputrc ~/.inputrc

install-tmux:
	@rm -f ~/.tmux.conf
	ln -s `pwd`/tmux.conf ~/.tmux.conf

install-vim:
	@rm -f ~/.vimrc
	ln -s `pwd`/vimrc ~/.vimrc

install-git:
	@rm -f ~/.gitconfig
	ln -s `pwd`/gitconfig ~/.gitconfig

install-slate:
	@rm -f ~/.slate
	ln -s `pwd`/slate ~/.slate
