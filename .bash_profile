export PATH="$HOME/.ndenv/bin:$PATH"
eval "$(ndenv init -)"

export PATH="$HOME/.yarn/bin:$HOME/.config/yarn/global/node_modules/.bin:$HOME/go/bin:$PATH"

# for git log
export LESSCHARSET=utf-8

# https://qiita.com/3waygood/items/fcc2a3c2af6551b1874b
for D in `ls $HOME/.ndenv/shims`
do
  export PATH="$HOME/.ndenv/shims:$PATH"
done

if [ -f ~/.bashrc ] ; then
. ~/.bashrc
fi
export PATH="$HOME/.rbenv/bin:$PATH"
eval "$(rbenv init -)"

export PATH="$PATH":"$HOME/.pub-cache/bin"


# https://qiita.com/waka424/items/bc77b6e8bd4f25760e58
export BASH_SILENCE_DEPRECATION_WARNING=1

export PATH="/usr/local/opt/postgresql@12/bin:$PATH"

# For compilers to find postgresql@11 you may need to set:
export LDFLAGS="-L/usr/local/opt/postgresql@11/lib"
export CPPFLAGS="-I/usr/local/opt/postgresql@11/include"

# For pkg-config to find postgresql@11 you may need to set:
export PKG_CONFIG_PATH="/usr/local/opt/postgresql@11/lib/pkgconfig"
export PATH="/usr/local/opt/postgresql@11/bin:$PATH"
