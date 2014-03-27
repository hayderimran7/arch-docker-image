This is the bootstrapping magic for the base arch image that will be used by DAC
(and possibly other cloudbees things).

You will want to ensure you have the latest https://raw.githubusercontent.com/tokland/arch-bootstrap/master/arch-bootstrap.sh
May need to apply fixes as per: https://github.com/tokland/arch-bootstrap/issues/5


1) setup bootstrap image and import into docker:

    install -m 755 arch-bootstrap.sh /usr/local/bin/arch-bootstrap
    arch-bootstrap boot1
    tar -C boot1 -c . | docker import - archboot

2) Build docker image

    docker build -t michaelneale/archbase .

3) push

    docker push michaelneale/archbase
