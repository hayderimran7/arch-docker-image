FROM archboot
ADD pacman.conf /etc/pacman.conf
RUN pacman -Sy
#ONBUILD pacman -Sy