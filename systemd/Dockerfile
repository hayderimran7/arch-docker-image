FROM michaelneale/archbase
 
RUN pacman -Sqyu --noconfirm --needed openssh && \
    systemctl enable sshd
 
# configure ssh
RUN sed -i \
        -e 's/^#*\(PermitRootLogin\) .*/\1 yes/' \
        -e 's/^#*\(PasswordAuthentication\) .*/\1 yes/' \
        -e 's/^#*\(PermitEmptyPasswords\) .*/\1 yes/' \
        -e 's/^#*\(UsePAM\) .*/\1 no/' \
        /etc/ssh/sshd_config
 
ENV container docker
EXPOSE 22
CMD /usr/lib/systemd/systemd
 
# To launch in GOOD STATE:
# docker run --privileged -v /sys/fs/cgroup:/sys/fs/cgroup:ro -p 2222:22 <REPONAME>
# You can then kill the docker process just fine
 
# To launch in BAD STATE: 
# docker run -it --privileged -v /sys/fs/cgroup:/sys/fs/cgroup:ro -p 2222:22 <REPONAME>
# Unkillable!
 
# The -i -t makes it not forward on the signals correctly, somehow... 
 
# What does this image do? 
# It is based on a basic arch-bootstrap image I built earlier - installs openssh and lets you log in as root 
# systemd requires cgroups and priv mode at this time (I know...)