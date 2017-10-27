#!/bin/sh

echo Installing Editor Extensions

# Install Atom Extensions
apm install MagicPython@1.0.12
apm install atom-typescript@11.0.9
apm install busy-signal@1.4.3
apm install file-icons@2.1.12
apm install haskell-grammar@0.4.0
apm install highlight-selected@0.13.1
apm install intentions@1.1.5
apm install language-babel@2.74.2
apm install language-graphql@0.9.0
apm install language-ini@1.19.0
apm install language-lua@0.9.11
apm install language-ocaml@1.9.5
apm install language-reason@0.0.4
apm install language-rust@0.4.12
apm install language-swift@0.5.0
apm install language-thrift@1.0.2
apm install language-vue@0.23.1
apm install linter@2.2.0
apm install linter-eslint@8.3.2
apm install linter-refmt@0.3.1
apm install linter-ui-default@1.6.10
apm install nuclide@0.256.0
apm install nuclide-format-js@0.0.41
apm install prettier-atom@0.38.0
apm install reason-refmt@0.3.2
apm install set-syntax@0.4.0
apm install sort-lines@0.15.0
apm install tool-bar@1.1.0

# Install VS Code Extensions
code --install-extension JerryHong.autofilename
code --install-extension PKief.material-icon-theme
code --install-extension akamud.vscode-theme-onedark
code --install-extension christian-kohler.npm-intellisense
code --install-extension dbaeumer.vscode-eslint
code --install-extension esbenp.prettier-vscode
code --install-extension flowtype.flow-for-vscode
code --install-extension freebroccolo.reasonml
code --install-extension hnw.vscode-auto-open-markdown-preview
code --install-extension kumar-harsh.graphql-for-vscode
code --install-extension steoates.autoimport
code --install-extension waderyan.gitblame
code --install-extension wix.vscode-import-cost
