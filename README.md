# BlackArch Linux Setup Script

This is a simple bash script designed to set up a BlackArch Linux environment with commonly used utilities, tools for penetration testing, and basic system configurations. It helps automate the installation process, ensuring that your system is ready to use with minimal setup.

## Features

- **System Update**: Updates the system and BlackArch repositories.
- **Essential Tools**: Installs utilities like `git`, `curl`, `vim`, `htop`, `tmux`, and more.
- **Security Tools**: Installs a wide range of tools for penetration testing, including `nmap`, `metasploit`, `wireshark`, `sqlmap`, `aircrack-ng`, and many others.
- **Shell Configuration**: Configures `zsh` as the default shell and installs `Oh-My-Zsh` for a better terminal experience.
- **Additional Utilities**: Installs useful utilities like `neofetch`, `exa`, `bat`, and `ranger`.
- **Python & Node.js**: Installs `python`, `pip`, `nodejs`, and `npm` for scripting and additional tool support.
- **Docker Setup**: Installs Docker and starts it automatically (optional).
- **BlackArch Tool Groups**: Installs additional BlackArch tool groups based on your needs.

## Prerequisites

- BlackArch Linux (or an Arch-based system with the BlackArch repository enabled).
- Root or `sudo` privileges to run the script.
  
## Installation

1. Clone the repository:

    ```bash
    git clone https://github.com/yourusername/blackarch-setup.git
    cd blackarch-setup
    ```

2. Make the script executable:

    ```bash
    chmod +x setup_blackarch.sh
    ```

3. Run the script with `sudo`:

    ```bash
    sudo ./setup_blackarch.sh
    ```

   This will install all the essential tools and configure your system for penetration testing.

## Customization

You can easily customize the script to suit your needs:

- **Add or remove tools**: Edit the script and modify the list of packages in the installation section.
- **Change the shell**: If you prefer a different shell, modify the line that configures `zsh` as the default shell.
- **Enable or disable Docker**: To skip Docker installation, simply remove or comment out the Docker installation block.

## License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.

## Acknowledgements

- [BlackArch Linux](https://blackarch.org/) - A repository of tools for penetration testing and security research.
- [Oh My Zsh](https://ohmyz.sh/) - A framework for managing Zsh configurations.

## Contributing

Feel free to fork the repository, create issues, and submit pull requests. Contributions are always welcome!

## Disclaimer

This script is intended for ethical security research and learning purposes only. Misuse of these tools for unauthorized purposes is illegal and unethical. Always ensure you have permission before conducting security assessments.
