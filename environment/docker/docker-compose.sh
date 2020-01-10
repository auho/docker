composeVersion="1.25.1"

# linux

## isntall docker-compose
sudo curl -L "https://github.com/docker/compose/releases/download/${composeVersion}/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose
chmod +x /usr/local/bin/docker-compose

## Command-line completion
### bash
curl -L https://raw.githubusercontent.com/docker/compose/${composeVersion}/contrib/completion/bash/docker-compose -o /etc/bash_completion.d/docker-compose

### zsh
mkdir -p ~/.zsh/completion
curl -L https://raw.githubusercontent.com/docker/compose/${composeVersion}/contrib/completion/zsh/_docker-compose > ~/.zsh/completion/_docker-compose