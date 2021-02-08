
# The next line updates PATH for the Google Cloud SDK.
if [ -f /Users/claudio/google-cloud-sdk/path.bash.inc ]; then
  source '/Users/claudio/google-cloud-sdk/path.bash.inc'
fi

# The next line enables shell command completion for gcloud.
if [ -f /Users/claudio/google-cloud-sdk/completion.bash.inc ]; then
  source '/Users/claudio/google-cloud-sdk/completion.bash.inc'
fi

export CLICOLOR=1
export LSCOLORS=GxFxCxDxBxegedabagaced
export DEVICE=opencl0:1
NODE_PATH="/usr/local/lib/node_modules"
export NODE_PATH

test -e "${HOME}/.iterm2_shell_integration.bash" && source "${HOME}/.iterm2_shell_integration.bash"
export PATH="/usr/local/opt/opencv3/bin:$PATH"

# Para hledger
export HLEDGER_UI_EDITOR=vim
# export LEDGER_FILE="/Users/claudio/Google Drive/Documentos/finanzas/master.ledger"

# <<< conda init <<<
function iterm2_print_user_vars() {
  iterm2_set_user_var gitBranch $((git branch 2> /dev/null) | grep \* | cut -c3-)
}

function mv2 ()
{
    dir="$2"
    tmp="$2"; tmp="${tmp: -1}"
    [ "$tmp" != "/" ] && dir="$(dirname "$2")"
    [ -a "$dir" ] ||
    mkdir -p "$dir" &&
    mv "$@"
}



# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/Users/claudio/anaconda3/bin/conda' 'shell.bash' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/Users/claudio/anaconda3/etc/profile.d/conda.sh" ]; then
        . "/Users/claudio/anaconda3/etc/profile.d/conda.sh"
    else
        export PATH="/Users/claudio/anaconda3/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<


# added by travis gem
[ -f /Users/claudio/.travis/travis.sh ] && source /Users/claudio/.travis/travis.sh

export PATH="$HOME/.cargo/bin:$PATH"
