# install homebrew
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

# install git
 brew install git

# ssh github, will prompt for passphrase
 ssh-keygen -t ed25519 -C "tuba_kaya@outlook.com" -f ~/.ssh/id_auth_tuba_ed25519_github
 eval "$(ssh-agent -s)"
 touch ~/.ssh/config
 # update file content with the following
    echo "Host *
    AddKeysToAgent yes
    UseKeychain yes
    IdentityFile ~/.ssh/id_auth_tuba_ed25519_github" > ~/.ssh/config
 ssh-add --apple-use-keychain ~/.ssh/id_auth_tuba_ed25519_github

 # install visual studio code
 brew install --cask visual-studio-code

# install github copilot extension on vscode
 code --install-extension GitHub.copilot
 