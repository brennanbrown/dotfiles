# .zshrc
#
# Extensive Zsh configuration for Brennan Kenneth Brown
#

# Set up Zsh options
setopt AUTO_CD                 # Change directory without typing 'cd'
setopt INTERACTIVE_COMMENTS    # Allow comments in interactive mode
setopt CORRECT                 # Enable command auto-correction
setopt AUTO_MENU               # Show completion menu on successive tab presses
setopt COMPLETE_IN_WORD        # Complete from both ends of a word
setopt IGNORE_EOF              # Prevent accidentally exiting the shell

# Set up aliases
alias ll='ls -lh'              # List files with human-readable sizes
alias la='ls -A'               # List all files, including hidden ones
alias grep='grep --color=auto' # Enable colored grep output
alias jl='jekyll serve'        # Start Jekyll development server
alias hl='hugo server -D'      # Start Hugo development server
alias rvim='reattach-to-user-namespace vim' # Use vim in tmux sessions

# Set up history
HISTFILE=~/.zsh_history        # Specify history file location
HISTSIZE=10000                 # Maximum history entries
SAVEHIST=10000                 # Save last 10,000 lines of history
setopt SHARE_HISTORY           # Share history across sessions
setopt EXTENDED_HISTORY        # Save timestamp and duration of commands
setopt INC_APPEND_HISTORY      # Write to history immediately
setopt HIST_IGNORE_DUPS        # Ignore consecutive duplicate commands
setopt HIST_REDUCE_BLANKS      # Remove superfluous blanks from history

# Set up prompt
autoload -U colors && colors   # Load color definitions
PS1="%B%{$fg[red]%}[%{$fg[yellow]%}%n%{$fg[green]%}@%{$fg[blue]%}%M %{$fg[magenta]%}%~%{$fg[red]%}]%{$reset_color%}$ "

# Enable syntax highlighting
source /usr/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

# Enable autocompletion
autoload -Uz compinit && compinit

# Set up poetry and prose directories
export POETRY_DIR="$HOME/Projects/poetry"
export PROSE_DIR="$HOME/Projects/prose"

# Function to create a new poetry file
np() {
    local filename="$POETRY_DIR/$(date +%Y-%m-%d)-$1.md"
    touch "$filename"
    echo "# $1" >> "$filename"
    echo "Created new poetry file: $filename"
    $EDITOR "$filename"
}

# Function to create a new prose file
npr() {
    local filename="$PROSE_DIR/$(date +%Y-%m-%d)-$1.md"
    touch "$filename"
    echo "# $1" >> "$filename"
    echo "Created new prose file: $filename"
    $EDITOR "$filename"
}

# Set up Ruby environment
export PATH="/usr/local/opt/ruby/bin:$PATH"
eval "$(rbenv init -)"

# Set up Node.js environment
export PATH="/usr/local/bin:$PATH"
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"

# Set up Python environment
export PYENV_ROOT="$HOME/.pyenv"
export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init --path)"

# Add custom scripts to PATH
export PATH="$PATH:$HOME/.local/bin"

# Start tmux automatically
if [ -z "$TMUX" ]; then
    tmux
fi
