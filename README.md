![1697123538342](https://github.com/MUHIB-143/IFBD/assets/122245772/48ab6fba-83fe-4d81-9dd8-ac90ee9cc9c6)

# IFBD - Installation Framework for Binary Distributions

## Description

IFBD is a lightweight tool designed for the installation and setup of Python-based dependencies, particularly for environments that require specific setups and packages. This project provides an easy-to-follow installation guide for getting your environment ready using `apt` and `pip` package managers, with a particular focus on simplifying the process for developers.

## Features

- **Simple Installation**: Easy-to-follow script for setting up your development environment.
- **Cross-platform Setup**: Compatible with Linux-based systems and package management tools like `apt` and `pkg`.
- **Dependency Management**: Automatically installs all required Python dependencies (`requests`, `mechanize`, `bs4`, etc.).
- **Version Control**: Seamless integration with `git` for repository management.
  
## Installation

### System Requirements

- Linux-based system (Ubuntu, Debian, Termux, etc.)
- Python 3.x
- `git` installed
- Internet connection to install dependencies

### Step-by-Step Installation

To get started with IFBD, simply follow these steps:

1. **Uninstall previous Python installations**:
    ```bash
    sudo apt uninstall python
    ```

2. **Install Python**:
    ```bash
    sudo apt install python
    ```

3. **Update and upgrade your system**:
    ```bash
    pkg update && pkg upgrade
    ```

4. **Install required packages**:
    ```bash
    pkg install curl
    pkg install python
    pip install requests
    pip install mechanize
    pip install beautifulsoup4
    pkg install git
    pip install rich
    ```

5. **Clone the IFBD repository**:
    ```bash
    rm -rf IFBD
    git clone --depth=1 https://github.com/MUHIB-143/IFBD.git
    ```

6. **Navigate into the cloned directory**:
    ```bash
    cd IFBD
    ```

7. **Pull the latest updates**:
    ```bash
    git pull
    ```

8. **Change permissions to make the script executable**:
    ```bash
    chmod 777 IFBD
    ```

9. **Run the IFBD tool**:
    ```bash
    ./IFBD
    ```

## Usage

Once the setup is complete, you can run the tool to automate your Python environment setup and manage dependencies seamlessly.

## Contributing

We welcome contributions from the community! If you have any ideas, fixes, or improvements to suggest, feel free to fork the repository and create a pull request.

## License

This project is licensed under the Apache 2.0 License - see the [LICENSE](LICENSE) file for details.

## Acknowledgements

- Thanks to all contributors who help make this project better.
- Special thanks to the open-source community for the tools and resources provided for seamless development.

