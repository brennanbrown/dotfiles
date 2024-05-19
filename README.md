# dotfiles: Ubuntu

This repository contains a collection of shell scripts and configuration files for setting up and personalizing my Linux environment. These scripts automate the installation of various software applications, development tools, and utilities, as well as apply custom configurations and tweaks to enhance productivity and user experience.

## Contents

- `fresh_install.sh`: A comprehensive script that installs essential software packages, development tools (Node.js, Python, Java, Docker), productivity applications, multimedia tools, and configures various system settings. It also includes additional software based on personal preferences, such as productivity tools, academic/research tools, web development tools, music players, chess applications, mindfulness tools, and more.
- `fonts-install.sh`: Installs a curated selection of high-quality fonts, including fonts from the apt repositories and additional fonts downloaded from Google Fonts.
- `noto.sh`: Script for removing unwanted Noto fonts from the system, keeping only a curated selection. It creates a backup directory for the removed fonts.
- `noto-recover.sh`: Restores the previously removed Noto fonts from the backup directory created by `noto.sh`.

## Usage

1. Clone this repository to your local machine:

```bash
git clone https://github.com/brennanbrown/dotfiles.git
```

2. Navigate to the cloned repository:

```bash
cd dotfiles
```

3. Run the desired script(s) with sudo privileges:

```bash
sudo bash freshinstall.sh
```

**Note**: Some scripts may require additional dependencies or configuration. Please review the script contents and comments before running them.

## Customization

Feel free to customize the scripts according to your specific needs and preferences. These scripts are meant to serve as a starting point for setting up a personalized Linux environment.

## License

This project is licensed under the [MIT License](LICENSE).
