go install golang.org/x/tools/gopls@latest
go install golang.org/x/tools/cmd/goimports@latest
go install github.com/segmentio/golines@latest
go install github.com/golangci/golangci-lint/cmd/golangci-lint@latest
go install golang.org/x/tools/cmd/godoc@latest
go install github.com/kisielk/errcheck@latest
go install honnef.co/go/tools/cmd/staticcheck@latest
go install mvdan.cc/sh/v3/cmd/shfmt@latest
npm install -g vscode-langservers-extracted
npm install -g typescript typescript-language-server yaml-language-server
sudo pacman -S ansible-lint

asdf reshim golang
asdf reshim nodejs