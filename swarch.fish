echo 'Если ты это читаешь, то к тебе много вопросов. Если что я опишу всё в ридми файле. Читай комментарии, установка неинтерактивная потому что я так хочу'
#Установка зависимостей, бтв в yay сразу же прописан клинбилд и все дифы, хвхв погугли как изменить, а то мне лень
#Пусть пока полежит тут, штука чтобы ставить йай пакеты без подтверждений: yes | yay --noconfirm ...
#yay настраивается через: ⟩ 'yay --save --answerclean All --answerdiff All'
#https://github.com/Jguer/yay/issues/830
#Все хоткеи для свэя тут https://www.reddit.com/r/swaywm/comments/he9imx/what_are_the_keyboard_shortcuts_for_sway/

sudo pacman -S git go mako waybar alacritty network-manager-applet networkmanager fish eza code ly unarchiver nnn ttf-anonymouspro-nerd --noconfirm
git clone https://aur.archlinux.org/yay.git
cd ./yay/
makepkg
sudo pacman -U yay-12.3.5-1-x86_64.pkg.tar.zst
cd 
yes | yay --noconfirm tofi swayfx 
git clone --depth=1 https://github.com/MubinMuhammad/MinimalSwayFX
cd ./MinimalSwayFX/
make && ./installer
cd
rm -rf ./.config/  
mkdir ./.config/
unar -o ./.config/ ./my-swarch/configs.zip
reboot

