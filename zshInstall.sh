#!/bin/bash

# Update and upgrade the system
echo "Updating and upgrading the system..."
sudo apt update
sudo apt upgrade -y

# Install Zsh
echo "Installing Zsh..."
sudo apt install zsh -y

# Install Oh My Zsh
echo "Installing Oh My Zsh..."
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

# Change the default shell to Zsh
echo "Changing default shell to Zsh..."
chsh -s $(which zsh)

# Restart the terminal (or source the .zshrc file)
echo "Restarting the terminal to apply changes..."
exec $SHELL

# List available themes
echo "Available themes:"
ls ~/.oh-my-zsh/themes

# Set a default theme (e.g., agnoster)
THEME="agnoster"
echo "Setting theme to $THEME..."
sed -i "s/^ZSH_THEME=.*$/ZSH_THEME=\"$THEME\"/" ~/.zshrc

# Source the .zshrc file to apply the changes
echo "Applying changes..."
source ~/.zshrc

# Install Powerline fonts for better appearance
echo "Installing Powerline fonts..."
sudo apt install fonts-powerline -y

# Configure the terminal to use the Powerline font
echo "Configuring terminal to use Powerline font..."
echo "Letter-spacing: -0.15" >> ~/.config/fontconfig/conf.d/10-powerline.conf
echo "Hinting: true" >> ~/.config/fontconfig/conf.d/10-powerline.conf
echo "Autohint: true" >> ~/.config/fontconfig/conf.d/10-powerline.conf
echo "Hintstyle: hintslight" >> ~/.config/fontconfig/conf.d/10-powerline.conf

# Restart the terminal to apply the font configuration
echo "Restarting the terminal to apply font configuration..."
exec $SHELL

echo "Colorful terminal setup complete!"