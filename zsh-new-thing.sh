
# # Agent detection - only activate minimal mode for actual agents  
# if [[ -n "$npm_config_yes" ]] || [[ -n "$CI" ]] || [[ "$-" != *i* ]]; then
#   export AGENT_MODE=true
# else
#   export AGENT_MODE=false
# fi

export AGENT_MODE=false

if [[ "$AGENT_MODE" == "true" ]]; then
  POWERLEVEL9K_INSTANT_PROMPT=off
  # Disable complex prompt features for AI agents
  POWERLEVEL9K_LEFT_PROMPT_ELEMENTS=(dir vcs)
  POWERLEVEL9K_RIGHT_PROMPT_ELEMENTS=()
  # Ensure non-interactive mode
  export DEBIAN_FRONTEND=noninteractive
  export NONINTERACTIVE=1
fi


# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
# Enable Powerlevel10k instant prompt only when not in agent mode
# if [[ "$AGENT_MODE" != "true" ]] && [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
#  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
# fi

# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:$HOME/.local/bin:/usr/local/bin:$PATH

# Path to your Oh My Zsh installation.
export ZSH="$HOME/.oh-my-zsh"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time Oh My Zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
# Set Oh My Zsh theme conditionally - disable for agents only
if [[ "$AGENT_MODE" == "true" ]]; then
  ZSH_THEME=""  # Disable Powerlevel10k for agents
else
#  ZSH_THEME="powerlevel10k/powerlevel10k"
  ZSH_THEME="robbyrussell"
fi


# Set list of themes to pick from when loading at random
# Setting this variable when ZSH_THEME=random will cause zsh to load
# a theme from this variable instead of looking in $ZSH/themes/
# If set to an empty array, this variable will have no effect.
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion.
# Case-sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment one of the following lines to change the auto-update behavior
# zstyle ':omz:update' mode disabled  # disable automatic updates
# zstyle ':omz:update' mode auto      # update automatically without asking
# zstyle ':omz:update' mode reminder  # just remind me to update when it's time

# Uncomment the following line to change how often to auto-update (in days).
# zstyle ':omz:update' frequency 13

# Uncomment the following line if pasting URLs and other text is messed up.
# DISABLE_MAGIC_FUNCTIONS="true"

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# You can also set it to another string to have that shown instead of the default red dots.
# e.g. COMPLETION_WAITING_DOTS="%F{yellow}waiting...%f"
# Caution: this setting can cause issues with multiline prompts in zsh < 5.7.1 (see #5765)
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# You can set one of the optional three formats:
# "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# or set a custom format using the strftime function format specifications,
# see 'man strftime' for details.
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load?
# Standard plugins can be found in $ZSH/plugins/
# Custom plugins may be added to $ZSH_CUSTOM/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git urltools git-commit)

source $ZSH/oh-my-zsh.sh

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
export EDITOR='nano'
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='nano'
# else
#   export EDITOR='cursor --wait'
# fi

# Compilation flags
# export ARCHFLAGS="-arch $(uname -m)"

# Set personal aliases, overriding those provided by Oh My Zsh libs,
# plugins, and themes. Aliases can be placed here, though Oh My Zsh
# users are encouraged to define aliases within a top-level file in
# the $ZSH_CUSTOM folder, with .zsh extension. Examples:
# - $ZSH_CUSTOM/aliases.zsh
# - $ZSH_CUSTOM/macos.zsh
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

alias zedit="nano ~/.zshrc"
alias zreal="source ~/.zshrc"
alias zreload="source ~/.zshrc"

alias gcb="git checkout -b"
alias gpnv="git push --no-verify"
alias gpfnv="git push --force --no-verify"

# Yarn dev
alias y="pnpm"
alias ys="pnpm start"
alias yys="pnpm i && pnpm start"
alias yyd="pnpm i && pnpm dev"
alias yl="pnpm lint"

alias comdot="git add . && git commit -m \".\" && gpnv"

# Hermit
alias sba="source bin/activate-hermit"
alias mras="mise r run --all-services --stripe"
alias nukedb="mise r db:destroy && mise r db:create && mise r db:load"
alias uprun="gcm && git pull && mras"

# gt
alias gtms="gt modify && gt submit -w"
alias gtsw="gt submit -w"


# terraform
alias tf="terraform"


# GIVE ME SCROLLBACK
export HISTSIZE=99999999
export SAVEHIST=HISTSIZE

kkil() {
  local pids=$(lsof -ti:3000)
  if [ -n "$pids" ]; then
    kill -9 $pids
  else
    echo "No process found on port 3000"
  fi
}

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"                   # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion" # This loads nvm bash_completion



# Later in your .zshrc - minimal prompt for agents
if [[ "$AGENT_MODE" == "true" ]]; then
  PROMPT='%n@%m:%~%# '
  RPROMPT=''
  unsetopt CORRECT
  unsetopt CORRECT_ALL
  setopt NO_BEEP
  setopt NO_HIST_BEEP  
  setopt NO_LIST_BEEP
  
  # Agent-friendly aliases to avoid interactive prompts
  alias cp='cp -f' 
  alias mv='mv -f'
  alias npm='npm --no-fund --no-audit'
  alias yarn='yarn --non-interactive'
  alias pip='pip --quiet'
  alias git='git -c advice.detachedHead=false'
else
  [[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
fi

fpath+=~/.zfunc; autoload -Uz compinit; compinit

eval "$(mise activate zsh)"
