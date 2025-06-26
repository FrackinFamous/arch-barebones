FROM archlinux@sha256:39f8172042016257f636967d77cfc11734cd9d5e372ad9489320706529ad96ec

# Install basic packages and create user with passwordless sudo
RUN pacman -Syu --noconfirm && \
    pacman -S --noconfirm sudo bash git base-devel shadow && \
    useradd -m frack && \
    echo "frack ALL=(ALL) NOPASSWD: ALL" >> /etc/sudoers

# Prepare .devcontainer and script as root
RUN mkdir -p /home/frack/.devcontainer
COPY .devcontainer/post-create.sh /home/frack/.devcontainer/post-create.sh
RUN chown -R frack:frack /home/frack/.devcontainer && chmod +x /home/frack/.devcontainer/post-create.sh

USER frack
WORKDIR /home/frack
SHELL ["/bin/bash", "-c"]

RUN ls -l /home/frack/.devcontainer/
