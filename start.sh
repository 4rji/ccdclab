#!/bin/bash

echo -e "\033[37m_________________________________________________________\033[0m"

# Define installation directory and govc path
INSTALL_DIR="/opt/4rji/bin"
GOVC_PATH="$INSTALL_DIR/govc"
GOVC_URL="https://github.com/vmware/govmomi/releases/latest/download/govc_Linux_x86_64.tar.gz"
TAR_FILE="govc_Linux_x86_64.tar.gz"

# Create installation directory if it doesn't exist
if [ ! -d "$INSTALL_DIR" ]; then
    echo -e "\033[34mCreating installation directory $INSTALL_DIR...\033[0m"
    sudo mkdir -p "$INSTALL_DIR"
fi

# Function to install govc
install_govc() {
    echo -e "\033[32mDownloading govc...\033[0m"
    wget -q "$GOVC_URL" -O "$TAR_FILE"

    echo -e "\033[34mExtracting govc...\033[0m"
    tar -xvf "$TAR_FILE"

    echo -e "\033[35mMoving govc to $INSTALL_DIR/\033[0m"
    sudo mv govc "$INSTALL_DIR/"

    echo -e "\033[33mCleaning up...\033[0m"
    rm "$TAR_FILE"

    echo -e "\033[32mgovc installed successfully.\033[0m"
}

# Function to download ccdclabs
download_ccdclabs() {
    echo -n "Do you want to download the ccdclabs programs? (y/N): "
    read -r response
    case "$response" in
        [yY][eE][sS]|[yY])
            echo -e "\033[32mDownloading ccdclab and ccdclabprogram...\033[0m"
            wget -q "https://raw.githubusercontent.com/4rji/bina/refs/heads/main/binarios/ccdclab" -O ccdclab
            wget -q "https://raw.githubusercontent.com/4rji/bina/refs/heads/main/binarios/ccdclabprogram" -O ccdclabprogram

            echo -e "\033[34mMoving ccdclab and ccdclabprogram to $INSTALL_DIR/\033[0m"
            sudo mv ccdclab ccdclabprogram "$INSTALL_DIR/"

            echo -e "\033[35mSetting executable permissions...\033[0m"
            sudo chmod +x "$INSTALL_DIR/ccdclab" "$INSTALL_DIR/ccdclabprogram"

            echo -e "\033[32mccdclabs programs downloaded and installed successfully.\033[0m"
            echo ""
            echo -e "Execute \033[1m/opt/4rji/bin/ccdclab\033[0m to start."
	    echo -e "The script will execute and install what is necessary for it to work. Don’t forget to modify the variables in ccdclabprogram first, so it works on the first attempt."
            ;;
        *)
            echo -e "\033[33mSkipping ccdclabs download.\033[0m"
            ;;
    esac
}

echo ""

# Check if govc is already installed
if [ -f "$GOVC_PATH" ]; then
    echo -e "\033[36mgovc is already installed at $GOVC_PATH. Skipping download.\033[0m"
else
    install_govc
fi

echo ""

# Prompt to download ccdclabs
download_ccdclabs

echo ""
echo -e "\033[37m_________________________________________________________\033[0m"
echo ""
