# Install manually
# ===================

# Install hoomebrew
# /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

# Oh my zsh
# sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

source ~/.zshrc


# Git setup
# STILL NEED TO LOG IN WITH PERSONAL ACCESS TOKEN
git config --global user.name "Kevin Jiang"
git config --global user.email kevin51jiang@email.com

curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.40.1/install.sh | bash

brew install rlwrap
brew install pyenv

# Disable bluetooth when laptop asleep
brew install bluesnooze


# Append the following
# echo 'export PYENV_ROOT="$HOME/.pyenv"' >> ~/.zshrc
# echo '[[ -d $PYENV_ROOT/bin ]] && export PATH="$PYENV_ROOT/bin:$PATH"' >> ~/.zshrc
# echo 'eval "$(pyenv init -)"' >> ~/.zshrc

# Pipx for ansible
brew install pipx
pipx ensurepath
sudo pipx ensurepath --global # optional to allow pipx actions with --global argument

# pipx install --include-deps ansible
# pipx inject --include-apps ansible argcomplete

####################################
## Closed source homebrew casks ####
####################################
# # Google Chrome
brew install --cask google-chrome
# # Slack
# brew install --cask slack
# # Spotify
brew install --cask spotify
# # Yaak
brew install --cask yaak
# Orbstack
brew install --cask orbstack
# Bruno
brew install --cask bruno
# # VSCode
brew install --cask visual-studio-code
# # iterm2
brew install --cask iterm2
# Rectangle for window management
brew install --cask rectangle
# 7-zip for all your compression needs
brew install sevenzip

# Allow mouse scroll to function normally
brew install --cask unnaturalscrollwheels

# Potentially useful or not
# 1pass
# brew install --cask 1password
# Git fork
# brew install --cask fork
# Linear App
brew install --cask linear-linear
# Torguard VPN
# brew install --cask torguard


#################################
### Dev stuff ig ################
#################################
# Node version management
brew install nvm

brew install git-lfs

brew install mise

# After refresh

# brew install yarn

#brew install thefuck

# Plant UML
brew install libtool
brew link libtool
brew install graphviz
brew link --overwrite graphviz



# Create directories for recordings
mkdir -p ~/Desktop/rec ~/Desktop/rec/error ~/Desktop/rec/output ~/Desktop/rec/raw



# Todo after
# For VS Code and VS Code Insiders, open the Command Palette via (F1 or ⇧⌘P) and type shell command to find the Shell Command:
# > Shell Command: Install 'code' command in PATH
# Install https://github.com/emreyolcu/discrete-scroll
