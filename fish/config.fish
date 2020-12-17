# Custom environment variables
set -gx HOMEBREW_BOTTLE_DOMAIN https://mirrors.tencent.com/homebrew-bottles
set -gx HOMEBREW_NO_AUTO_UPDATE 1

# JAVA_HOME
set -gx JAVA_HOME (/usr/libexec/java_home -v 1.8)

# GOROOT and GOPATH
set -gx GOROOT (go env GOROOT)
set -gx GOPATH (go env GOPATH)

set -g fish_user_paths "$GOPATH/bin" $fish_user_paths

# default vagrant provider
set -g VAGRANT_DEFAULT_PROVIDER virtualbox

# ulimit
ulimit -n 65536
ulimit -u 2048

# autojump
[ -f /usr/local/share/autojump/autojump.fish ]; and source /usr/local/share/autojump/autojump.fish

# omf theme options
set -g theme_display_k8s_context no
set -g theme_display_hg no
set -g theme_display_nvm no
set -g theme_display_vagrant no
set -g theme_color_scheme solarized
set -g theme_nerd_fonts yes

# lsd aliases
alias ls='lsd'
alias l='ls -l'
alias la='ls -a'
alias lla='ls -la'
alias lt='ls --tree'
