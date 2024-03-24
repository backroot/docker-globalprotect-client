FROM ubuntu:22.04

ENV USER=root

# The GlobalProtect app for Linux installs to the /opt/paloaltonetworks/globalprotect directory.
# After GlobalProtect first runs, the app also creates a GlobalProtect user folder
# $HOME/.globalprotect to save user registry configuration and other CLI related settings.
COPY docker-entrypoint.sh /
RUN apt-get update \
    && apt-get install -y curl dmidecode realmd \
    && curl -L -O https://vpn.wisc.edu/clients/PanGPLinux-6.1.2.tgz \
    && tar -xf PanGPLinux-6.1.2.tgz \
    && apt-get install -y ./GlobalProtect_deb-6.1.2.0-82.deb \
    && chmod +x /docker-entrypoint.sh

WORKDIR /opt/paloaltonetworks/globalprotect

ENTRYPOINT ["/docker-entrypoint.sh"]
