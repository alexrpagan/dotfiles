install: install-bash install-tmux install-vim install-git install-chunkwm install-skhd

install-bash:
	@rm -f ~/.bash_aliases
	ln -s `pwd`/bash_aliases ~/.bash_aliases
	@rm -f ~/.bash_profile
	ln -s `pwd`/bash_profile ~/.bash_profile
	@rm -f ~/.work_profile
	ln -s `pwd`/work_profile ~/.work_profile
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

install-chunkwm:
	@rm -f ~/.chunkwmrc
	ln -s `pwd`/chunkwmrc ~/.chunkwmrc

install-skhd:
	@rm -f ~/.skhdrc
	ln -s `pwd`/skhdrc ~/.skhdrc
