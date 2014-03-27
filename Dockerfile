FROM archboot
ADD pacman.conf /etc/pacman.conf
#ONBUILD pacman -Sy