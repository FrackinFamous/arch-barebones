FROM archlinux@sha256:39f8172042016257f636967d77cfc11734cd9d5e372ad9489320706529ad96ec

# Install basic packages and create user with passwordless sudo
RUN pacman -Syu --noconfirm && \
    pacman -S --noconfirm sudo bash git base-devel shadow && \
    useradd -m frack && \
    echo "frack ALL=(ALL) NOPASSWD: ALL" >> /etc/sudoers

USER frack
WORKDIR /home/frack
SHELL ["/bin/bash", "-c"]

# Copy and chmod the post-create.sh
COPY .devcontainer/post-create.sh /home/frack/.devcontainer/post-create.sh
RUN chown frack:frack /home/frack/.devcontainer/post-create.sh && chmod +x /home/frack/.devcontainer/post-create.sh
RUN ls -l /home/frack/.devcontainer/
