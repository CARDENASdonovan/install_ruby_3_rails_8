# https://guides.rubyonrails.org/install_ruby_on_rails.html

# Install dependencies with apt
sudo apt update
sudo apt install build-essential rustc libssl-dev libyaml-dev zlib1g-dev libgmp-dev git
sudo apt install curl -y

# Install Mise version manager
curl https://mise.run | sh
# echo 'eval "$(~/.local/bin/mise activate)"' >> ~/.bashrc
echo "eval \"\$(/home/user/.local/bin/mise activate bash)\"" >> ~/.bashrc
source ~/.bashrc
export PATH="$HOME/.local/bin:$PATH"

# Install Ruby globally with Mise
mise use -g ruby@3
ruby -v

gem install rails
rails -v