# shortcut to this dotfiles path is $ZSH
export ZSH=$HOME/.zsh

export ZSH_THEME="robbyrussell"

# your project folder that we can `c [tab]` to
export PROJECTS=~/code

# use .localrc for SUPER SECRET CRAP that you don't
# want in your public, versioned repo.
if [[ -a ~/.localrc ]]
then
  source ~/.localrc
fi

# all of our zsh files
typeset -U config_files
config_files=($ZSH/**/*.zsh)

# load the startup files
for file in ${(M)config_files:#*/startup.zsh}
do
  source $file
done

# load the path files
for file in ${(M)config_files:#*/path.zsh}
do
  source $file
done

# load everything but the path and completion files
for file in ${${config_files:#*/path.zsh}:#*/completion.zsh}
do
  source $file
done

# initialize autocomplete here, otherwise functions won't be loaded
autoload -U compinit
compinit

# load every completion after autocomplete loads
for file in ${(M)config_files:#*/completion.zsh}
do
  source $file
done

unset config_files

export RBENV_ROOT=/usr/local/var/rbenv
if which rbenv > /dev/null; then eval "$(rbenv init -)"; fi

GPG_TTY=$(tty)
export GPG_TTY
eval $(gpg-agent --daemon)

### Added by the Heroku Toolbelt
export PATH="/usr/local/heroku/bin:$PATH"
