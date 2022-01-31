# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# This tells zsh to save history to a file. Learned it the hard way :smiletear:
HISTFILE=~/.zsh_history
HISTSIZE=11000
SAVEHIST=11000
setopt APPEND_HISTORY

# Prompt
#PS1='%F{blue}%~ %(?.%F{green}.%F{red})%#%f '

#Tab completion colors
eval "$(dircolors)"
zstyle ':completion:*' list-colors ${(s.:.)LS_COLORS}

#Tab Completion select highlight
zstyle ':completion:*' menu select
autoload -U compinit && compinit
zmodload -i zsh/complist

autoload -Uz vcs_info
precmd_vcs_info() { vcs_info }
precmd_functions+=( precmd_vcs_info )
setopt prompt_subst
RPROMPT=\$vcs_info_msg_0_
zstyle ':vcs_info:git:*' formats '%F{240}(%b)%r%f'
zstyle ':vcs_info:*' enable git

# For C^w to delete upto special charecters rather than to a whitespace
autoload -U select-word-style
select-word-style bash

######################### Abin Latheef ############################

# My Aliases
 alias rc='vim  ~/.zshrc; source ~/.zshrc'
 alias nf='find ~/Desktop/ascii_art/ -type f | shuf -n 1 | xargs neofetch --source'
 
# Folders
 alias dw='cd ~/Downloads'
 alias dt='cd ~/Desktop'
 alias .c='cd ~/.config/'
 alias code='cd ~/Desktop/Code'
 alias lin='cd ~/Desktop/Linux'
 alias dgit='cd ~/Desktop/Code/git'
 alias tg='cd ~/Downloads/Telegram\ Desktop/'
 alias main='cd ~/Desktop/Linux/Main/; ls'
 alias dotf='cd ~/X/mydotfiles'
 alias s6='cd /run/media/abinlatheef/X/College/Academic/S6'

 alias alac='vim ~/.config/alacritty/alacritty.yml'
 alias e='emacs -nw'
 alias vimrc='vim ~/.vimrc'
#alias urxrc='vim ~/.Xresources; xrdb ~/.Xresources'
 alias x='cd ~/X'
 alias kitt='vim ~/.config/kitty/kitty.conf'
 alias bsp='vim ~/.config/bspwm/bspwmrc'
 alias sxh='vim ~/.config/sxhkd/sxhkdrc'
 alias syu='sudo pacman -Syu'
 alias p='ping 8.8.8.8'
 alias pp='ping 1.1.1.1'
 alias ytmp3='cd ~/Music; yt-dlp -x --audio-format mp3 --embed-thumbnail'
 alias ytfhd='cd ~/Downloads/Video; yt-dlp --format 399+140 '
 alias ythd='cd ~/Downloads/Video; yt-dlp -f 22 '

 alias warpc='warp-cli connect'
 alias warpd='warp-cli disconnect'
 alias warps='warp-cli warp-stats'

 alias calc='insect '

# Script Aliases
 alias scr='cd ~/X/scripts'
 alias wallp='~/X/scripts/styli.sh/styli.sh -g'
 alias batmod='sudo ~/X/scripts/bat_threshold.sh'
 alias wallf='~/X/scripts/styli.sh/styli_bsp.sh' #f for feh
 alias fswap='~/X/scripts/file_swap.sh'

# For LS
LS_COLORS=$LS_COLORS:'tw=00;33:ow=01;33:'; export LS_COLORS
alias ls='exa'
alias la='exa -lah'

# path additions
PATH=$PATH:/home/abinlatheef/.cargo/bin:/home/abinlatheef/X/execs:/home/abinlatheef/.local/bin

# ZSH autosuggest hotkey : Ctrl+Space
# bindkey '^ ' autosuggest-accept

            ### ZSH Plugins ###
source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source /usr/share/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh
#source /usr/share/zsh/plugins/theme-minimal/minimal.zsh #prompt
#source /usr/share/zsh/plugins/common/common.zsh-theme
source /usr/share/zsh-theme-powerlevel10k/powerlevel10k.zsh-theme

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
