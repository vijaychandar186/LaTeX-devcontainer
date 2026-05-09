# LaTeX Devcontainer

GitHub Codespaces devcontainer for LaTeX development with live PDF preview.

## Features

- LaTeX Workshop VSCode extension — build, preview, format
- `texlive` + `latexmk` — compiler toolchain
- `latexindent` — formatter (`Shift+Alt+F`)
- Format on save for `.tex` files

## Setup

Open in Codespaces — devcontainer installs everything automatically.

To install manually:

```bash
sudo apt-get install -y texlive texlive-latex-extra latexmk texlive-extra-utils make
```

## VSCode Shortcuts

| Action | Shortcut |
|--------|----------|
| Build PDF | `Ctrl+Alt+B` |
| Preview PDF | `Ctrl+Alt+V` |
| Format file | `Shift+Alt+F` |
