# Presentation template for Pandoc

## Requirements

- [Pandoc](http://pandoc.org/)
- [RevealJS](https://revealjs.com/#/)
- PIP
- [mermaid.cli](https://github.com/mermaidjs/mermaid.cli) (not working in WSL)
- [mermaid-filter](https://github.com/raghur/mermaid-filter) (not working in WSL)

### Ubuntu

Tested on 19.04:
```sh
sudo apt update
sudo apt install pandoc pandoc-citeproc texlive-full
sudo apt install python3-pip
sudo snap install node --classic --channel=8
```

## Quick usage

- Clone this repo;
- Write your slides in `parts/*.md`; Last file is `slides.md`;
- Change metadata in `metadata.yaml`;
- Run `make get_reveal` and `make get_mermaid` in the first execution;
- Generate your HTML presentation with `make`.