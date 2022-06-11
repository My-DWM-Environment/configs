# paths
PREFIX = /usr
DEST_DIR = $(PREFIX)/local/bin

install:
	cp -rf ./.bash_logout ~/
	cp -rf ./.bash_profile ~/
	cp -rf ./.bashrc ~/
	cp -rf ./.xinitrc ~/
	cp -rf ./.xxkbrc ~/
	cp -rf ./.viminfo ~/
	cp -rf ./.vim ~/
	cp -rf ./theme ~/
	cp -rf ./.gtkrc-2.0 ~/
	cp -rf ./.gitconfig ~/

	cp -rf ./.config/audacious ~/.config/
	cp -rf ./.config/gedit ~/.config/
	cp -rf ./.config/gtk-2.0 ~/.config/
	cp -rf ./.config/gtk-3.0 ~/.config/
	cp -rf ./.config/nemo ~/.config/
	cp -rf ./.config/nvim ~/.config/
	cp -rf ./.config/terminator ~/.config/

update:
	cp -rf ~/.bash_logout ./
	cp -rf ~/.bash_profile ./
	cp -rf ~/.bashrc ./
	cp -rf ~/.xinitrc ./
	cp -rf ~/.xxkbrc ./
	cp -rf ~/.viminfo ./
	cp -rf ~/.vim ./
	cp -rf ~/theme ./
	cp -rf ~/.gtkrc-2.0 ./
	cp -rf ~/.gitconfig ./

	cp -rf ~/.config/audacious ./.config/
	cp -rf ~/.config/gedit ./.config/
	cp -rf ~/.config/gtk-2.0 ./.config/
	cp -rf ~/.config/gtk-3.0 ./.config/
	cp -rf ~/.config/nemo ./.config/
	cp -rf ~/.config/nvim ./.config/
	cp -rf ~/.config/terminator ./.config/
