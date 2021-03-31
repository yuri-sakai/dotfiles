alias code="open -a /Applications/Visual\ Studio\ Code.app"

PROMPT='
%F{white}%d%f
%F{yellow}%B●%b%f '

autoload -Uz vcs_info
setopt prompt_subst
# true | false
# trueで作業ブランチの状態に応じて表示を変える
zstyle ':vcs_info:*' check-for-changes true
# addしてない場合の表示
zstyle ':vcs_info:*' unstagedstr "%F{red}%B＋%b%f"
# commitしてない場合の表示
zstyle ':vcs_info:*' stagedstr "%F{yellow}＊%f"
# デフォルトの状態の表示
zstyle ':vcs_info:*' formats "%u%c%F{palegreen}【%b】%f"
# コンフリクトが起きたり特別な状態になるとformatsの代わりに表示
zstyle ':vcs_info:*' actionformats '【%b | %a】'

precmd () { vcs_info }

RPROMPT=$RPROMPT'${vcs_info_msg_0_}'

export PATH=$HOME/.nodebrew/current/bin:$PATH