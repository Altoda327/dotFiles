# dotFiles

Guida all'installazione e configurazione di Alacritty, NeoVim, Tmux e zsh su MacOS.

![NeoVim Anteprima](https://camo.githubusercontent.com/003f1d1e16aefc62ecb200b5e4eb08a214641618380541dd6290cfc601cb3b7e/687474703a2f2f692e696d6775722e636f6d2f476b496c38466e2e706e67)

## Table of contents

* [Requisiti](#Requisiti)
* [Installazione e Configurazione](#Installazione-e-Configurazione)

## Requisiti

* HomeBrew


## Installazione e Configurazione

Installate un font da [Nerd Font](https://www.nerdfonts.com/), perchè sarà necessario nella configurazione di alacritty e per le icone di NeoVim. Il font utilizzato nel codice fornito è Hack Nerd Font.

---

La prima cosa da fare è installare [Alacritty](https://alacritty.org/) e zsh, quest'ultimo tramite il terminale con il sequente comando:

```
brew install zsh
```

Se avete zsh già installato, verificate quale shell avete attiva sul terminale con il comando:

```
echo $0
```

Se non avete zsh come shell predefinita, impostatela con questo comando:

```
chsh -s $(which zsh)
```
---

Ora che abbiamo zsh, installiamo tmux:

```
brew install tmux
```

Per verificare di averlo installato scrivete:

```
tmux -V
```

---

Iniziamo a configurare tmux e zsh.
Crea il file di configurazione per tmux con il sequente comdando:

```
touch ~/.tmux.conf
```

e incolla all'interno del file il codice contenuto nel file `tmux.conf`.
Nella configurazione di tmux utilizzo anche un plugin chiamato [tmux-mem-cpu-load](https://github.com/thewtex/tmux-mem-cpu-load), installatelo con il comando:

```
brew install tmux-mem-cpu-load
```

Prima di configurare zsh, installiamo [ohmyzsh](https://github.com/ohmyzsh/ohmyzsh) un framework open source guidato dalla comunità per la gestione della configurazione zsh. Attraverso curl (verificare di avere curl) installiamo ohmyzsh:

```
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
```

Installiamo anche due plugin per zsh:

* [Sintax Highligh](https://github.com/zsh-users/zsh-syntax-highlighting/tree/master)
* [Autosuggestions](https://github.com/zsh-users/zsh-autosuggestions/tree/master)

Per Sintax Highligh utilizziamo il comando:

```
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
```

Per l'autosuggestions utilizziamo il comando:

```
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
```

Creiamo ora un'altro file di configurazione per zsh:

```
touch ~/.zshrc
```

e incolla all'interno del file il codice contenuto nel file `configurazione.zshrc`.

---

Ora copia il contenuto delle cartelle alacritty e nvim e incollalo all'interno della cartella `~/.config` a cui sei entrato con il comando:

```
cd ~/.config
```

Per finire entra nel file `plugin.lua` con NeoVim utilizzando il comando `nvim ~/.config/nvim/lua/core/plugin.lua` e installa tutti i plugin con il comandi `:source %` e `:PackerSync`

---

Per scrivere file in latex bisogna installare:

* [Tex Live](https://www.tug.org/mactex/) su MacOS.
* Latexmk (per compilare il latex)
* [Skim](https://skim-app.sourceforge.io/) o Zathura (per l'anteprima del pdf di latex, Skim per macOS funziona meglio)

---

Per installare latexmk è necessario utilizzare il comando:

```
brew install latexmk
```

E verificare la sua versione con:

```
latexmk -v
```

---

Se si decide si utilizzare Zathura al posto di Skim come visualizzatore di pdf, è necessario installare anche un suo plugin: `zathura-pdf-poppler`.

Per installare zathura e il suo plugin utilizza:

```
brew tap zegervdv/zathura
```
e poi:

```
brew install zathura
brew install zathura-pdf-poppler
```

E infine digitare:

```
mkdir -p $(brew --prefix zathura)/lib/zathura
ln -s $(brew --prefix zathura-pdf-poppler)/libpdf-poppler.dylib $(brew --prefix zathura)/lib/zathura/libpdf-poppler.dylib
```

Modifica il file vimtex.lua, impostando zathura come visualizzatore pdf.

---

Per installare GitHub Copilot, andate in questa [repo](https://github.com/github/copilot.vim) e seguite le istruzioni.
