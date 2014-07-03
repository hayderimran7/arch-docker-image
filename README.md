This is a minimal-ish bootstrapped arch image for docker by @michaelneale.
It is systemd capable - and published to the docker hub as: 

https://registry.hub.docker.com/u/cloudbees/archbase/

# How it works: 

Firstly, https://wiki.archlinux.org/index.php/Archbootstrap is used - with a cut down pacman.conf. 
Then systemd is tuned (bits ripped out) - devices are fixed up, and some other things are removed. 

This is meant to serve as a base for cloudbees arch containers - feel free to use it. 

For inspiration, I looked at https://registry.hub.docker.com/u/codekoala/arch/ - which works nicely with systemd, and also has an sshd flavour: https://registry.hub.docker.com/u/codekoala/ssh/


# To bootstrap this image again

You will want to ensure you have the latest https://raw.githubusercontent.com/tokland/arch-bootstrap/master/arch-bootstrap.sh from https://wiki.archlinux.org/index.php/Archbootstrap. Works well when the bootstrap environment is arch linux itself, reasonably up to date:

    ./bootstrap-image

This will leave you with archbase in your local docker image repository. You can then tag it and push it (or perhaps modify it via the included Dockerfile).


# To use

See <a href="https://registry.hub.docker.com/u/cloudbees/archbase/">here</a> for instructions. This is systemd capable. 
To add sshd - use this <a href="https://gist.github.com/michaelneale/491134409fa7a1c32119">Dockerfile</a> (make FROM say archbase or cloudbees/archbase).
