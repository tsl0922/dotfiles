# Aliases
alias ls 'ls -G'
alias ll 'ls -alF'

# Custom environment variables

set -gx HOMEBREW_BOTTLE_DOMAIN https://mirrors.ustc.edu.cn/homebrew-bottles

# JAVA_HOME
set -gx JAVA_HOME (/usr/libexec/java_home -v 1.8)

# GOROOT and GOPATH
set -gx GOROOT (go env GOROOT)
set -gx GOPATH (go env GOPATH)
set -gx PATH $PATH $GOPATH/bin

# default vagrant provider
set -gx VAGRANT_DEFAULT_PROVIDER virtualbox

# ulimit
ulimit -n 65536
ulimit -u 2048

# autojump
[ -f /usr/local/share/autojump/autojump.fish ]; and source /usr/local/share/autojump/autojump.fish