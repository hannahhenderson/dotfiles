set -x

touch ~/.bashrc;
rm ~/.bashrc;
cp .bashrc ~;
source ~/.bashrc;

touch ~/.bash_profile;
rm ~/.bash_profile;
cp .bash_profile ~;

# Homebrew
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
brew update;
brew tap Homebrew/bundle;
brew bundle;

touch ~/.lein/profiles.clj;
rm ~/.lein/profiles.clj;
cp .lein/profiles.clj ~/.lein/profiles.clj;
lein deps;

set +x
