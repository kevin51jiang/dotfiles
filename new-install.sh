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


brew install rlwrap

####################################
## Closed source homebrew casks ####
####################################
# # Google Chrome
brew install --cask google-chrome
# # Slack
# brew install --cask slack
# # Spotify
brew install --cask spotify
# # Insomnia
brew install --cask insomnia
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
# brew install --cask linear-linear
# Torguard VPN
# brew install --cask torguard


#################################
### Dev stuff ig ################
#################################
# Node version management
brew install nodenv

brew install git-lfs

# After refresh

# brew install yarn

#brew install thefuck

# Plant UML
brew install libtool
brew link libtool
brew install graphviz
brew link --overwrite graphviz



# Todo after
# For VS Code and VS Code Insiders, open the Command Palette via (F1 or ⇧⌘P) and type shell command to find the Shell Command:
# > Shell Command: Install 'code' command in PATH
# Install https://github.com/emreyolcu/discrete-scroll
