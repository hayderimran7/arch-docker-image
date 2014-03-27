This is the bootstrapping magic for the base arch image that will be used by DAC
(and possibly other cloudbees things).

So setup bootstrap image:

    install -m 755 arch-bootstrap.sh /usr/local/bin/arch-bootstrap
    arch-bootstrap boot1
    tar -C boot1 -c . | docker import - archboot

To setup base image

    docker build -t archbase . 
