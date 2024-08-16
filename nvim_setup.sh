# Update packages
sudo apt update
sudo apt upgrade

# Install pre-requisites
sudo apt-get install ninja-build gettext cmake unzip curl build-essential

# Download nvim from source
mkdir nvim && cd nvim
git clone https://github.com/neovim/neovim.git .

# Use make and install 
make CMAKE_BUILD_TYPE=Release
sudo make install

# Use this is hear to make uninstalling simpler
rm -rf build/
make CMAKE_EXTRA_FLAGS="-DCMAKE_INSTALL_PREFIX=$HOME/neovim"
make install
export PATH="$HOME/neovim/bin:$PATH"

# Install lua rocks
sudo apt install lua5.4
sudo apt install liblua5.4-dev
wget https://luarocks.org/releases/luarocks-3.11.1.tar.gz
tar zxpf luarocks-3.11.1.tar.gz
cd luarocks-3.11.1
./configure && make && sudo make install
sudo luarocks install luasocket
##################################################################################################
# PLUGINS DEPENDENCIES
##################################################################################################

# Coc - nodejs
# installs nvm (Node Version Manager)
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.7/install.sh | bash
# Update enviroment variables so nvm appears
source ~/.bashrc
# download and install Node.js (you may need to restart the terminal)
nvm install 20
# verifies the right Node.js version is in the environment
node -v # should print `v20.15.1`
# verifies the right npm version is in the environment
npm -v # should print `10.7.0`
