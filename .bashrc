export GOPATH=$HOME/go
export GOBIN=$GOPATH/bin
export PATH=$PATH:/home/ruut/.cargo/bin
export PATH=$PATH:/home/ruut/.local/bin
export PATH=$PATH:/home/ruut/.luarocks/bin
export PATH=$PATH:/home/ruut/.dotnet/tools
export PATH=$PATH:/home/ruut/Qt5.12.2/Tools/QtCreator/bin/
export PATH=$PATH:/home/ruut/Qt5.12.2/5.12.2/gcc_64/bin/
export PATH=$PATH:/home/ruut/AndroidSDK/emulator
export PATH=$PATH:/home/ruut/AndroidSDK/tools/bin
export PATH=$PATH:/home/ruut/AndroidSDK/platform-tools
export PATH=$PATH:/home/ruut/Programming/Dart/flutter/bin
export PATH=$PATH:/usr/local/games/warsow/
export PATH=$PATH:/usr/lib/dart/bin
export PATH=$PATH:/media/ruut/ssd/Soft/Programming/Dart/flutter/bin
export PATH=$PATH:$GOBIN
# export PATH=$PATH:/home/ruut/.config/dmenu/bin
export GPGKEY=F0AD519DF844D3185166C3147E006FEF54407185
export ANDROID_HOME=/home/ruut/AndroidSDK/
export DOTNET_USE_POLLING_FILE_WATCHER=true
export CNC_GENERALS_PATH="/media/ruut/data/GameZ/CnC_Generals/Generals_installed_1.08"
export CNC_GENERALS_ZH_PATH="/media/ruut/data/GameZ/CnC_Generals/Zero_Hour_installed_1.04"
export XDG_RUNTIME_DIR="/run/user/1000"
export DBUS_SESSION_BUS_ADDRESS="unix:path=/run/user/1000/bus"
export GITLAB_COM_TOKEN=zHPqNzHexQuLJ8NSRyP8
export XDG_CONFIG_HOME=$HOME/.config
export QT_STYLE_OVERRIDE=Arc-Dark
export EDITOR=nano
export LANG="en_US.UTF-8"
export CPU_COUNT=8
export COC_LTX_FILE_PATH="/run/media/ruut/99c9b836-a7b8-403c-9ef8-5bfc1e1ec831/games/stalker/CoC/fsgame.ltx"
export COP_LTX_FILE_PATH="/run/media/ruut/99c9b836-a7b8-403c-9ef8-5bfc1e1ec831/games/stalker/CoP/fsgame.ltx"
export GREATWAR_LTX_FILE_PATH="/run/media/ruut/99c9b836-a7b8-403c-9ef8-5bfc1e1ec831/games/stalker/GreatWar/fsgame.ltx"
# export __GLX_VENDOR_LIBRARY_NAME="amber"
export MESA_LOADER_DRIVER_OVERRIDE=crocus

synclient TapButton1=1 &
synclient TapButton2=1 &
synclient TapButton3=1 &
synclient HorizTwoFingerScroll=1 &

# xmodmap -e "keycode 66 = Shift_L NoSymbol Shift_L"
# setxkbmap -layout 'us,ru' -option 'grp:menu_toggle'

# ~/.bashrc: executed by bash(1) for non-login shells.
# see /usr/share/doc/bash/examples/startup-files (in the package bash-doc)
# for examples

# If not running interactively, don't do anything
case $- in
    *i*) ;;
      *) return;;
esac

# don't put duplicate lines or lines starting with space in the history.
# See bash(1) for more options
HISTCONTROL=ignoreboth

# append to the history file, don't overwrite it
shopt -s histappend

# for setting history length see HISTSIZE and HISTFILESIZE in bash(1)
HISTSIZE=10000
HISTFILESIZE=20000

# check the window size after each command and, if necessary,
# update the values of LINES and COLUMNS.
shopt -s checkwinsize

# If set, the pattern "**" used in a pathname expansion context will
# match all files and zero or more directories and subdirectories.
#shopt -s globstar

# make less more friendly for non-text input files, see lesspipe(1)
[ -x /usr/bin/lesspipe ] && eval "$(SHELL=/bin/sh lesspipe)"

# set variable identifying the chroot you work in (used in the prompt below)
if [ -z "${debian_chroot:-}" ] && [ -r /etc/debian_chroot ]; then
    debian_chroot=$(cat /etc/debian_chroot)
fi

# set a fancy prompt (non-color, unless we know we "want" color)
case "$TERM" in
    xterm-color|*-256color) color_prompt=yes;;
esac

# uncomment for a colored prompt, if the terminal has the capability; turned
# off by default to not distract the user: the focus in a terminal window
# should be on the output of commands, not on the prompt
#force_color_prompt=yes

if [ -n "$force_color_prompt" ]; then
    if [ -x /usr/bin/tput ] && tput setaf 1 >&/dev/null; then
	# We have color support; assume it's compliant with Ecma-48
	# (ISO/IEC-6429). (Lack of such support is extremely rare, and such
	# a case would tend to support setf rather than setaf.)
	color_prompt=yes
    else
	color_prompt=
    fi
fi

if [ "$color_prompt" = yes ]; then
    PS1='${debian_chroot:+($debian_chroot)}\[\033[01;32m\]\u@\h\[\033[00m\]:\[\033[01;34m\]\w\[\033[00m\]\$ '
else
    PS1='${debian_chroot:+($debian_chroot)}\u@\h:\w\$ '
fi
unset color_prompt force_color_prompt

# If this is an xterm set the title to user@host:dir
case "$TERM" in
xterm*|rxvt*)
    PS1="\[\e]0;${debian_chroot:+($debian_chroot)}\u@\h: \w\a\]$PS1"
    ;;
*)
    ;;
esac

# enable color support of ls and also add handy aliases
if [ -x /usr/bin/dircolors ]; then
    test -r ~/.dircolors && eval "$(dircolors -b ~/.dircolors)" || eval "$(dircolors -b)"
    alias ls='ls --color=auto'
    #alias dir='dir --color=auto'
    #alias vdir='vdir --color=auto'

    alias grep='grep --color=auto'
    alias fgrep='fgrep --color=auto'
    alias egrep='egrep --color=auto'
fi

# colored GCC warnings and errors
#export GCC_COLORS='error=01;31:warning=01;35:note=01;36:caret=01;32:locus=01:quote=01'

# some more ls aliases
alias ll='ls -alF'
alias la='ls -A'
alias l='ls -CF'

alias lsa='ls -la'
alias gst='git status'
alias ga='git add'
alias gc='git commit'
alias gcp='git commit --allow-empty'
alias gck='git checkout'
alias gl='git log'
alias gln='git clone'
alias gd='git diff'
alias xrc='bash .xinitrc'
alias sr='sudo -i'
alias g='git'
alias gb='git branch'
alias gcl='git clone'
alias gcb='git checkout'
alias gpl='git pull origin'
alias gp='git pull'
alias gph='git push origin'
alias gsh='git stash'
alias gshl='git stash list'
alias gsha='git stash apply'
alias gshd='git stash drop'
alias gshp='git stash pop'
alias gm='git merge --no-ff'
alias postj='curl --header "Content-Type: application/json" --request POST --data'
alias grp='grep -rnHE --color --exclude-dir=*dist --exclude-dir=*_modules --exclude-dir=*build --exclude=*.min* --exclude=*.bundle*'
alias sx='startx 1>>startx.log 2>>startx.log'
alias nr="npm run"

alias pm2s='pm2 start'
alias pm2da='pm2 delete all'

alias telegram="FONTCONFIG_FILE=/etc/fonts/ $HOME/.local/applications/telegram/Telegram"

# Add an "alert" alias for long running commands.  Use like so:
#   sleep 10; alert
alias alert='notify-send --urgency=low -i "$([ $? = 0 ] && echo terminal || echo error)" "$(history|tail -n1|sed -e '\''s/^\s*[0-9]\+\s*//;s/[;&|]\s*alert$//'\'')"'

# Automatically add completion for all aliases to commands having completion functions
function alias_completion {
    local namespace="alias_completion"

    # parse function based completion definitions, where capture group 2 => function and 3 => trigger
    local compl_regex='complete( +[^ ]+)* -F ([^ ]+) ("[^"]+"|[^ ]+)'
    # parse alias definitions, where capture group 1 => trigger, 2 => command, 3 => command arguments
    local alias_regex="alias ([^=]+)='(\"[^\"]+\"|[^ ]+)(( +[^ ]+)*)'"

    # create array of function completion triggers, keeping multi-word triggers together
    eval "local completions=($(complete -p | sed -Ene "/$compl_regex/s//'\3'/p"))"
    (( ${#completions[@]} == 0 )) && return 0

    # create temporary file for wrapper functions and completions
    rm -f "/tmp/${namespace}-*.tmp" # preliminary cleanup
    local tmp_file; tmp_file="$(mktemp "/tmp/${namespace}-${RANDOM}XXX.tmp")" || return 1

    local completion_loader; completion_loader="$(complete -p -D 2>/dev/null | sed -Ene 's/.* -F ([^ ]*).*/\1/p')"

    # read in "<alias> '<aliased command>' '<command args>'" lines from defined aliases
    local line; while read line; do
        eval "local alias_tokens; alias_tokens=($line)" 2>/dev/null || continue # some alias arg patterns cause an eval parse error
        local alias_name="${alias_tokens[0]}" alias_cmd="${alias_tokens[1]}" alias_args="${alias_tokens[2]# }"

        # skip aliases to pipes, boolean control structures and other command lists
        # (leveraging that eval errs out if $alias_args contains unquoted shell metacharacters)
        eval "local alias_arg_words; alias_arg_words=($alias_args)" 2>/dev/null || continue
        # avoid expanding wildcards
        read -a alias_arg_words <<< "$alias_args"

        # skip alias if there is no completion function triggered by the aliased command
        if [[ ! " ${completions[*]} " =~ " $alias_cmd " ]]; then
            if [[ -n "$completion_loader" ]]; then
                # force loading of completions for the aliased command
                eval "$completion_loader $alias_cmd"
                # 124 means completion loader was successful
                [[ $? -eq 124 ]] || continue
                completions+=($alias_cmd)
            else
                continue
            fi
        fi
        local new_completion="$(complete -p "$alias_cmd")"

        # create a wrapper inserting the alias arguments if any
        if [[ -n $alias_args ]]; then
            local compl_func="${new_completion/#* -F /}"; compl_func="${compl_func%% *}"
            # avoid recursive call loops by ignoring our own functions
            if [[ "${compl_func#_$namespace::}" == $compl_func ]]; then
                local compl_wrapper="_${namespace}::${alias_name}"
                    echo "function $compl_wrapper {
                        (( COMP_CWORD += ${#alias_arg_words[@]} ))
                        COMP_WORDS=($alias_cmd $alias_args \${COMP_WORDS[@]:1})
                        (( COMP_POINT -= \${#COMP_LINE} ))
                        COMP_LINE=\${COMP_LINE/$alias_name/$alias_cmd $alias_args}
                        (( COMP_POINT += \${#COMP_LINE} ))
                        $compl_func
                    }" >> "$tmp_file"
                    new_completion="${new_completion/ -F $compl_func / -F $compl_wrapper }"
            fi
        fi

        # replace completion trigger by alias
        new_completion="${new_completion% *} $alias_name"
        echo "$new_completion" >> "$tmp_file"
    done < <(alias -p | sed -Ene "s/$alias_regex/\1 '\2' '\3'/p")
    source "$tmp_file" && rm -f "$tmp_file"
}; alias_completion

# Alias definitions.
# You may want to put all your additions into a separate file like
# ~/.bash_aliases, instead of adding them here directly.
# See /usr/share/doc/bash-doc/examples in the bash-doc package.

if [ -f ~/.bash_aliases ]; then
    . ~/.bash_aliases
fi

# enable programmable completion features (you don't need to enable
# this, if it's already enabled in /etc/bash.bashrc and /etc/profile
# sources /etc/bash.bashrc).
if ! shopt -oq posix; then
  if [ -f /usr/share/bash-completion/bash_completion ]; then
    . /usr/share/bash-completion/bash_completion
  elif [ -f /etc/bash_completion ]; then
    . /etc/bash_completion
  fi
fi

gcomp ()
{
    local targetBranch=$1;
    local currentBranch=`git branch | grep '*' | cut -d' ' -f2`;
    git diff --name-only "${currentBranch}" "${targetBranch}" | grep -oE "packages/(cloud|ecommerce|discounts)/[a-z\-]+/" | sort | uniq | sed 's|packages/||' | sed 's|.$||' | sed 's|/|-|' | awk '{print}' ORS=', ' | sed 's|..$|\n|';
}

gpht ()
{
    local currentBranch=`git branch | grep '*' | cut -d' ' -f2`;
    git push origin "${currentBranch}"
}

gplt ()
{
    local currentBranch=`git branch | grep '*' | cut -d' ' -f2`;
    git pull origin "${currentBranch}"
}

gcj ()
{
    local data=`find . -path '*/node_modules' -prune -o -name '*.gitlab-ci.yml*' -exec grep "CI_COMMIT_MESSAGE" {} \; | grep -oP "[.*].+[.*]" | tr -d '.*'`
    local value=`echo -e "${data}\nclose" | dmenu -i -l 15 -fn "monospace:size=14" -nb "#1c1f25" -nf "#bbbbbb" -sb "#282c34" -sf "#eeeeee"`;
    local message='';

    while [[ ! "$value" == "close" && ! -z "$value" ]]; do
        message="${message} ${value}";
        value=`echo -e "${data}\nclose" | dmenu -i -l 15 -fn "monospace:size=14" -nb "#1c1f25" -nf "#bbbbbb" -sb "#282c34" -sf "#eeeeee"`;
    done

    # echo "message: $message"

    if [ ! -z "$message" ]; then
        git commit --allow-empty -m "[ci job:${message}]"
    fi
}
gf ()
{
    git fetch origin $1:$1 && gck $1;
}

_git_stash_apply ()
{
    __gitcomp_nl "$(__git stash list | sed -n -e 's/:.*//p')"
}

_npm_scripts () {
    # check package.json file in current directory
    if [ ! -f ./package.json ]; then
        return
    fi

    local scripts="$(node -e 'const { scripts } = require(`./package.json`); if (!scripts) process.exit(); let a = Object.entries(scripts); for (let s in scripts) { console.log(s); }' | grep -E ^$2)"
    local -a toks
    local tmp

    if [ -z "$scripts" ]; then
        return;
    fi

    while read -r tmp; do
        toks+=( "$tmp" )
    done <<< "$scripts"

    if [[ ${#toks[@]} -ne 0 ]]; then
        COMPREPLY+=( "${toks[@]}" )
    fi
}

complete -F _npm_scripts nr

# load completion for git alias
_completion_loader git
__git_complete gb _git_branch
__git_complete gcomp _git_branch
__git_complete gck _git_checkout
__git_complete gd _git_diff
__git_complete gc _git_commit
__git_complete gl _git_log
__git_complete ga _git_add
__git_complete gpl _git_branch
__git_complete gph _git_branch
__git_complete gp _git_pull
__git_complete gsh _git_stash
__git_complete gsha _git_stash_apply
__git_complete gshd _git_stash_apply
__git_complete gshp _git_stash_apply
__git_complete g _git
__git_complete gm _git_branch

synclient TapButton1=1
synclient TapButton2=1
synclient TapButton3=1
synclient HorizTwoFingerScroll=1

setxkbmap -option grp:rctrl_toggle,grp_led:scroll,caps:none us,ru &

[[ -z $DISPLAY && $XDG_VTNR -eq 1 ]] && startx
# source "$HOME/.cargo/env"

synclient TapButton1=1
synclient TapButton2=1
synclient TapButton3=1
synclient HorizTwoFingerScroll=1

if [[ -f "/usr/share/nvm/init-nvm.sh" ]]; then
    source /usr/share/nvm/init-nvm.sh
fi
