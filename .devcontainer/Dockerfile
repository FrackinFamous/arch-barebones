FROM archlinux@sha256:39f8172042016257f636967d77cfc11734cd9d5e372ad9489320706529ad96ec

# Create the user 'frack' with sudo (because you like power, daddy)
RUN pacman -Syu --noconfirm && \
    pacman -S --noconfirm sudo && \
    useradd -m frack && \
    echo "frack ALL=(ALL) NOPASSWD: ALL" >> /etc/sudoers

USER frack
WORKDIR /home/frack
