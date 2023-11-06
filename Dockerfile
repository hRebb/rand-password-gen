FROM gitpod/workspace-full:latest

# Install Nix
RUN curl -L https://nixos.org/nix/install | sh
RUN . $HOME/.nix-profile/etc/profile.d/nix.sh

# Install other dependencies if needed

# Set the working directory
WORKDIR /workspace

# Entry command, for example, to start your Vagrant VM
CMD ["/bin/bash"]